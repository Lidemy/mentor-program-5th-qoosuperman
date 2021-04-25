function reverse(str) {
  var strArr = str.split('')
  var result = []
  for(var i =0;i<strArr.length;i++){
    result.unshift(strArr[i])
  }
  console.log(result.join(''))
}

reverse('hello');
