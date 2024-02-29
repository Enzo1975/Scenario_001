@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Root for Students'
define root view entity ZC_STUDENTS_M 
as projection on ZI_STUDENTS_M 
{
    key Student_ID as StudentID,
--    key faculty_id              as Faculty_ID,
    Surname       as StudentSurName,   
    Name          as StudentName,
    _EXAMS: redirected to composition child ZC_EXAMS_M  // Make association public
}
