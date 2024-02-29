@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Root for Students'
define root view entity ZI_STUDENTS_M as select from zdmo_students
composition [0..*] of ZI_EXAMS_M as _EXAMS
{
    key stu_id                  as Student_ID,
--    key faculty_id              as Faculty_ID,
    stu_surname                 as Surname,   
    stu_name                    as Name,
    _EXAMS // Make association public
}
