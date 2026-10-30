CLASS zcl_ye_exception DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_exception IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  " 숫자로 변환할 수 없는 문자열
  DATA lv_text TYPE string VALUE `ABC`.
  DATA lv_number TYPE i.

  TRY.
    lv_number = lv_text.
    out->write( lv_number ).

    CATCH cx_sy_conversion_no_number.
        out->write( 'Not a number' ).
  ENDTRY.

  " 0으로 나누는 경우
  DATA lv_divisor TYPE i VALUE 0.

  TRY.
    lv_number = 100 / lv_divisor.
    out->write( lv_number ).

  CATCH cx_sy_zerodivide.
    out->write( 'Cannot divide by zero' ).

  ENDTRY.
  ENDMETHOD.
ENDCLASS.