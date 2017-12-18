/**
 * 입력받을 수 있는 값을 필터링한다.
 * ex : <input type="text" ..... onkeypress="filterKey('[0-9]', event)"> ; 숫자만 키입력이 가능한 text filed
 * ex : <input type="text" ..... onkeypress="filterKey('[0-9a-zA-Z]', event)"> ; 영문,숫자만 키입력이 가능한 text filed
 * ex : <input type="text" ..... onkeypress="filterKey('[\u3130-\u318f\uac00-\ud7af]', event)"> ; 한글만 키입력이 가능한 text filed
 * ex : <input type="text" ..... onkeypress="filterKey('[0-9\u3130-\u318f\uac00-\ud7af]', event)"> ; 숫자,한글만 키입력이 가능한 text filed
 * @param filter 필터링할 정규표현식 ex) '[0-9]':0~9의 값만 허용, '[a-zA-Z]':알파벳만 허용
 * @param e
 * @return
 */
$.onKeyPressFilter = function(filter, e) {
   var key;
   var keychar;


   if (window.event) {
      // IE에서 이벤트를 확인하기 위한 설정
      key = window.event.keyCode;
   } else if (e) {
     // FireFox에서 이벤트를 확인하기 위한 설정
      key = e.which;
   } else {
      return true;
   }      

   if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 13) || (key == 27)) {
      return true;
   }

   keychar = String.fromCharCode(key);
   
   var re = new RegExp(filter);
   if (re.test(keychar)) return true;
   else return false;
   
}