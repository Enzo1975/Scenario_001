CLASS zdmo_generate_faculty DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdmo_generate_faculty IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA:it_faculty TYPE TABLE OF zdmo_faculties.

*   fill internal table
    it_faculty = VALUE #(
        ( faculty_id = '200' faculty_name = 'Computer Science' )
        ( faculty_id = '300' faculty_name = 'Philosopy'  )
        ).

    DELETE FROM zdmo_faculties.
    INSERT zdmo_faculties FROM TABLE @it_faculty.

    SELECT * FROM zdmo_faculties INTO TABLE @it_faculty.
    out->write( sy-dbcnt ).
    out->write( 'Data inserted successfully!' ).

  ENDMETHOD.





ENDCLASS.
