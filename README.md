# swift-2-array-remove-object-extension
A Swift 2 array extension that can remove an object


Usage:
```
import Foundation

extension Array {
    mutating func removeObject<U: AnyObject>(object: U) -> Element? {
        if count > 0 {
            for index in startIndex ..< endIndex {
                if (self[index] as! U) === object { return self.removeAtIndex(index) }
            }
        }
        return nil
    }
}

class Obj {
    let name: String!
    init (name: String) {
        self.name = name
    }
}

let obj1 = Obj(name: "Object 1")
let obj2 = Obj(name: "Object 2")
let obj3 = Obj(name: "Object 3")
var objArray = [obj1, obj2, obj3]

objArray.removeObject(obj2)

print(objArray)
```
