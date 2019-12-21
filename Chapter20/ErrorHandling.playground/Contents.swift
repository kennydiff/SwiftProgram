//: Playground - noun: a place where people can play

import Cocoa

enum Token {
    case number(Int)
    case plus
    case jian
}

class Lexer {
    enum Error: Swift.Error {
        case invalidCharacter(Character)
    }

    let input: String
    var position: String.Index

    init(input: String) {
        self.input = input
        self.position = self.input.startIndex
    }

    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        return input[position]
    }

    func advance() {
        assert(position < input.endIndex, "Cannot advance past endIndex!")  //assertion: n. 断言，声明；主张，要求；坚持；认定
        position = input.index(after: position)
    }

    func getNumber() -> Int {
        var value = 0

        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                // another digit - add it into value
                let digitValue = Int(String(nextCharacter))!
                value = 10*value + digitValue
                advance() // ℃

            default:
                // a non-digit - go back to regular lexing
                return value
            }
        }

        return value
    }

    func lex() throws -> [Token] {
        var tokens = [Token]()

        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                let value = getNumber()
                tokens.append(.number(value))

            case "+":
                tokens.append(.plus)
                advance()
                
            case "-":
                tokens.append(.jian)
                advance()

            case " ":
                // just advance to ignore spaces
                advance()

            default:
//                return tokens
                throw Lexer.Error.invalidCharacter(nextCharacter) //抛出不合法字符的错误
            }
        }

        return tokens
    }
}

class Parser {
    enum Error: Swift.Error {
        case unexpectedEndOfInput
        case invalidToken(Token)
    }

    let tokens: [Token]
    var position = 0

    init(tokens: [Token]) {
        self.tokens = tokens
    }

    func getNextToken() -> Token? {
        guard position < tokens.count else {
            return nil }
        let token = tokens[position]
        position += 1
        return token
    }

    func getNumber() throws -> Int {
        guard let token = getNextToken() else {
            throw Parser.Error.unexpectedEndOfInput
        }

        switch token {
        case .number(let value):
            return value

        case .plus:
            throw Parser.Error.invalidToken(token)
        
        case .jian:
            throw Parser.Error.invalidToken(token)
        }
    }

    func parse() throws -> Int {
        // Require a number first.
        var value = try getNumber()

        while let token = getNextToken() {
            switch token {

            // Getting a Plus after a Number is legal.
            case .plus:
                // After a plus, we must get another number.
                let nextNumber = try getNumber()
                value += nextNumber
                
           case .jian:
                let nextNumber = try getNumber()
                value -= nextNumber

                // Getting a Number after a Number is not legal.
            case .number:
                throw Parser.Error.invalidToken(token)
            }
        }

        return value
    }
}

func evaluate(_ input: String) {
    print("Evaluating: \(input)")
    let lexer = Lexer(input: input)
        
    do {
        let tokens = try lexer.lex()
        print("Lexer output: \(tokens)")
        let parser = Parser(tokens: tokens)
        let result = try parser.parse()
        print("Parser output: \(result)")
    } catch Lexer.Error.invalidCharacter(let character) {
        print("Input contained an invalid character: \(character)")
    } catch Parser.Error.unexpectedEndOfInput {
        print("Unexpected end of input during parsing")
    } catch Parser.Error.invalidToken(let token) {
        print("Invalid token during parsing: \(token)")
    } catch {
        print("An error occurred: \(error)")
    }
}

evaluate("10 + 5 + 7c + 8")
