CLASS zcl_ye_loop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_loop IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  " 세 번 반복
  DO 3 TIMES.
    out->write( |Count: { sy-index }| ).
  ENDDO.

  " 조건에 따라 반복 종료
  DO 5 TIMES.

    IF sy-index = 3.
        EXIT.
    ENDIF.

        out->write( |Step:{ sy-index }| ).

    ENDDO.
  ENDMETHOD.
ENDCLASS.