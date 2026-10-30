CLASS zcl_ye_data_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_data_types IMPLEMENTATION.

    METHOD if_oo_adt_classrun~main.
        " 변수 선언
        DATA lv_stock TYPE i VALUE 10.
        out->write( lv_stock ).

        " 변수 값 변경
        lv_stock = 3.
        out->write( lv_stock ).

        " 상수 선언
        CONSTANTS c_limit TYPE i VALUE 5.

        " 조건문
        IF lv_stock < c_limit.
            out->write( 'Low Stock' ).
        ENDIF.


        " 변수 초기화
        CLEAR lv_stock.
        out->write( lv_stock ).

        " 인라인 선언: 오른쪽 값으로부터 타입 추론 -> 인라인 할 때 백틱 옆에 공백 꼭 있어야 함
        DATA(lv_message) = `Finished`.
        out->write( lv_message ).


  ENDMETHOD.
ENDCLASS.