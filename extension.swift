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
