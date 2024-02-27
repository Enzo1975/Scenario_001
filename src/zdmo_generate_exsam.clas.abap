CLASS zdmo_generate_exsam DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdmo_generate_exsam IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA:it_exams TYPE TABLE OF zdmo_exams.

*   fill internal table
    it_exams = VALUE #(

        ( exam_id = '01' student_id = '1' description = 'Programming 1'  exam_score = 20 )
        ( exam_id = '02' student_id = '1' description = 'Programming 2'  exam_score = 30 )
        ( exam_id = '03' student_id = '1' description = 'Math 1'         exam_score = 18 )
        ( exam_id = '04' student_id = '1' description = 'Math 2'         exam_score = 30 )

       ).


    DELETE FROM zdmo_exams.

    INSERT zdmo_exams FROM TABLE @it_exams.

    SELECT * FROM zdmo_exams INTO TABLE @it_exams.
    out->write( sy-dbcnt ).
    out->write( 'data inserted successfully!' ).

  ENDMETHOD.





ENDCLASS.
