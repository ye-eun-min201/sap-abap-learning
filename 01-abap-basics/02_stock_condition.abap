CLASS zcl_ye_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_hello_world IMPLEMENTATION.

    METHOD if_oo_adt_classrun~main.
        " 재고 수량
        DATA lv_stock TYPE i VALUE 3.

        " 현재 재고 출력
        out->write( lv_stock ).

        " 재고 부족 여부 확인
        IF lv_stock < 5.
            out->write( 'Low Stock' ).
        ELSE.
            out->write( 'Enough Stock' ).
        ENDIF.
        ENDMETHOD.
ENDCLASS.