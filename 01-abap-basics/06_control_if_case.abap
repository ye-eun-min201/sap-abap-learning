CLASS zcl_ye_control_if DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ye_control_if IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      " 점수에 따라 등급 판단
      DATA lv_score TYPE i VALUE 85.

      IF lv_score >= 90.
        out->write( 'Grade A' ).
      ELSEIF lv_score >= 80.
        out->write( 'Grade B' ).
      ELSE.
        out->write( 'Grade C' ).
      ENDIF.

      " 값에 따라 다른 코드 실행
      DATA lv_status TYPE i VALUE 2.

      CASE lv_status.
        WHEN 1.
            out->write( 'Pending' ).
        WHEN 2.
            out->write( 'Completed' ).
        WHEN OTHERS.
            out->write( 'Unknown' ).

        ENDCASE.

  ENDMETHOD.
ENDCLASS.