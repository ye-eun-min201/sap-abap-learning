CLASS zcl_ye_string DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_string IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      " 상품명과 가격, 수량 선언
      DATA lv_product TYPE string VALUE `Apple`.
      DATA lv_price TYPE i VALUE 1500.
      DATA lv_quantity TYPE i VALUE 3.


      " 총 금액 계산
      DATA(lv_total) = lv_price * lv_quantity.

      " 문자열 템플릿
      DATA(lv_message) =
        |{ lv_product }: { lv_total } KRW|.


      " 문자열 출력
      out->write( lv_message ).


      " 문자열 연결
      DATA(lv_hello) = `Hello` && ` ` && `ABAP`.
      out->write( lv_hello ).
  ENDMETHOD.
ENDCLASS.