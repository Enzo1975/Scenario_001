CLASS zdmo_generate_students DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdmo_generate_students IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA:it_students TYPE TABLE OF zdmo_students.

*   fill internal table
    it_students = VALUE #(

        ( stu_id = '1' faculty_id = '200' stu_surname = 'Trotta' stu_name = 'Vincenzo' )
        ( stu_id = '2' faculty_id = '300' stu_surname = 'Rossi' stu_name =  'Mario' )
       ).


    DELETE FROM zdmo_students.

    INSERT zdmo_students FROM TABLE @it_students.

    SELECT * FROM zdmo_students INTO TABLE @it_students.
    out->write( sy-dbcnt ).
    out->write( 'data inserted successfully!' ).

  ENDMETHOD.





ENDCLASS.
