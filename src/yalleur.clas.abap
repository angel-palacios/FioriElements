CLASS yalleur DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS yalleur IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    UPDATE zfe_abook_002039 SET currency_code = 'EUR'.
    IF sy-subrc EQ 0.
      out->write( 'Currencies updated' ).
    ELSE.
      out->write( 'Currencies could NOT be updated' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
