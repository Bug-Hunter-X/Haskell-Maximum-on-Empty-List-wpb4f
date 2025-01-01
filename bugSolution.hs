The solution involves using pattern matching or a safer function to handle the case of an empty list.

```haskell
main :: IO ()
main = do
  let numbers = []
  let maxNumber = case numbers of
                    [] -> 0  -- Or a suitable default value
                    xs -> maximum xs
  print maxNumber

-- Alternatively using maybe
main' :: IO ()
main' = do
  let numbers = []
  let maxNumber = maybe 0 maximum numbers
  print maxNumber
```
The `case` statement checks if the list is empty. If it is, it returns a default value (0 in this example). Otherwise, it uses `maximum` as usual.  The `maybe` function provides a concise way to achieve the same result.