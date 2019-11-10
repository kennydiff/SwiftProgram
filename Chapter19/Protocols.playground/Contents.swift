protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    // var description: String {get}  //Kenny Added for 垃圾CustomStringConvertibles，删掉这玩意就得将description 加入协议

    func label(forColumn column: Int) -> String

    func itemFor(row: Int, column: Int) -> String
}

protocol printableTablularDataSource: TabularDataSource,CustomStringConvertible{
    
}

func printTable(_ dataSource: printableTablularDataSource) {
//func printTable(_ dataSource: TabularDataSource) {
    print("Table: \(dataSource.description)")

    // Create first row containing column headers
    var firstRow = "|"

    // Also keep track of the width of each column
    var columnWidths = [Int]()

    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)

        var max_wide:Int = columnLabel.count
        for j in 0 ..< dataSource.numberOfRows {
//            print(columnLabel,dataSource.itemFor(row: j, column: i))
            max_wide = max(max_wide, dataSource.itemFor(row: j, column:i).count)
            
        }
        columnWidths.append(max_wide)
        
        //columnWidths.append(columnLabel.count)  //+9 字符串扩展9个字符，防止太大的数量导致溢出
        //max_wide - columnLabel.count  //补充这么多个空格。
        
//        var title_need_space : String = ""
//        print(max_wide - columnLabel.count)

        let paddingNeededTitle = max_wide + 1 - columnLabel.count
        let title_need_space = repeatElement(" ", count: paddingNeededTitle).joined(separator: "")
        let columnHeader = title_need_space + "\(columnLabel) |"
        //print(columnHeader)
        firstRow += columnHeader
    }
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows {
        // Start the output string
        var out = "|"

        // Append each item in this row to our string
        for j in 0 ..< dataSource.numberOfColumns {
            //print(out)
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = columnWidths[j] - item.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }

        // Done - print it!
        print(out)
    }
}


struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}


struct Department: printableTablularDataSource{
//struct Department: TabularDataSource {
    let name: String
    var people = [Person]()

    var description: String {
        return "Department (\(name))"
    }

    init(name: String) {
        self.name = name
    }

    mutating func add(_ person: Person) {
        people.append(person)
    }

    var numberOfRows: Int {
        return people.count
    }

    var numberOfColumns: Int {
        return 3
    }

    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Employee Name"
        case 1: return "Age"
        case 2: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }

    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("Invalid column!")
        }
    }
}

var department = Department(name: "Engineering")
//department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Joe", age: 1931, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 36, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 25, yearsOfExperience: 20))
department.add(Person(name: "Kenny", age: 41, yearsOfExperience: 16))

printTable(department)
print("")

//- 黄金挑战 ------------------------------------------
struct Book{  // for 黄金挑战
    let name: String
    let author: String
    let rake: Double
}

struct BookCollection: printableTablularDataSource{
//struct Department: TabularDataSource {
    let name: String
    var books = [Book]()

    var description: String {
        return "Collection (\(name))"
    }

    init(name: String) {
        self.name = name
    }

    mutating func add(_ book: Book) {
        books.append(book)
    }

    var numberOfRows: Int {
        return books.count
    }

    var numberOfColumns: Int {
        return 3
    }

    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Book Name"
        case 1: return "Author"
        case 2: return "Amazon Raking"
        default: fatalError("Invalid column!")
        }
    }

    func itemFor(row: Int, column: Int) -> String {
        let book = books[row]
        switch column {
        case 0: return book.name
        case 1: return book.author
        case 2: return String(book.rake)
        default: fatalError("Invalid column!")
        }
    }
}

var bookcollection = BookCollection(name: "Computer Science")

bookcollection.add(Book(name: "First Book", author: "auth01", rake: 3.53))
bookcollection.add(Book(name: "2 BOOK", author: "auth02", rake: 4.53))
bookcollection.add(Book(name: "C# Programming", author: "auth03", rake: 2.78))
bookcollection.add(Book(name: "Swift Programming",author: "auth04", rake: 1.53))

printTable(bookcollection)
