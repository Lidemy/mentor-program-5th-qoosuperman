``` js
function isValid(arr) {
  for(var i=0; i<arr.length; i++) {
    if (arr[i] <= 0) return 'invalid'
  }
  for(var i=2; i<arr.length; i++) {
    if (arr[i] !== arr[i-1] + arr[i-2]) return 'invalid'
  }
  return 'valid'
}

isValid([3, 5, 8, 13, 22, 35])
```

## 執行流程
1. 第一個回圈在檢查 arr 這個參數裡面每個數字是不是小於等於 0，任何一個小於等於 0 就會回傳 invalid
2. 第二個回圈在檢查從 index = 2 的這個 element 開始到最後一個，是不是每個的值等於前面兩個 element 的加總

這個程式應該主要是用來檢查輸入的陣列有沒有符合廢波那契數列的其中一部分，但如果有符合費波那契數列應該還要檢查前面第一個跟第二個數字的數字大小是不是後面的比前面的大