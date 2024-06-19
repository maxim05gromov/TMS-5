enum Season: String{
    case winter = "Зима"
    case spring = "Весна"
    case summer = "Лето"
    case autumn = "Осень"
}


let autumn: Season = .autumn
print(autumn.rawValue)



/*

enum Cell{
    case text(Int, String)
    case video(Int, String, String)
    case image(Int, String, String)
    
    
    func draw(){
        switch self {
        case .text(let int, let string):
            print("Строка с текстом \(string) от пользователя \(int)")
        case .video(let int, let string, let string2):
            print("Видео \(string) с текстом \(string2) от пользователя \(int)")
        case .image(let int, let string, let string2):
            print("Фото \(string) с текстом \(string2) от пользователя \(int)")
        }
    }
}

let cell: Cell = .image(0, "img", "Фотка")
cell.draw()
*/

func printNotNil(_ strings: String?...) -> Int {
    var result = 0
    for s in strings {
        if let s{
            print(s)
        }else{
            result += 1
        }
    }
    return result
}

printNotNil("Hello", nil, "World", nil, "!!!")




/*
 
 Опционалы
 Необходимы для возможности хранить отсутствие значения
 Опциональный тип данных обозначается '?'
 В случае отсутствия данных будет храниться значение nil, иначе само значение
 
 Если мы точно уверены, что в опциональной переменной есть значение, можно воспользоваться Force Unwrap:
 value!
 
 Однако если там все же окажется nil, случится краш
 
 guard let value else { return } позволит привести тип данных с опционалом к неопциональному, если в переменной был nil, функция прекратит выполнение
 
 Данная конструкция позволит проверить, лежит ли в переменной nil. Для примера, если там nil, будет показана ошибка, иначе данные будут как-то обработаны
 if let value {
    doSomething()
 else{
    returnError()
 }
 
 
 Также можно автоматически заменять nil на какое-то значение по умолчанию:
 let value: String?
 print(value ?? "default")
 
 */
