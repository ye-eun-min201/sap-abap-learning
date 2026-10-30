CLASS zcl_ye_arithmetic DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_arithmetic IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    " 두 정수 선언
    DATA number1 TYPE i VALUE -8.
    DATA number2 TYPE i VALUE 3.

    " 소수점 둘째 자리까지 저장
    DATA result TYPE p LENGTH 8 DECIMALS 2.

    " 나눗셈 수행
    result = number1 / number2.


    " 계산 결과를 문장으로 만들기
    DATA(output) =
    |{ number1 } / { number2 } = { result }|.

    out->write( output ).

  ENDMETHOD.
ENDCLASS.