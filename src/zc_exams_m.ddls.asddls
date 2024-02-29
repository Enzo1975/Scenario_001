@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for Exsams'
define view entity ZC_EXAMS_M as 
projection on ZI_EXAMS_M
{
     key exam_id        as ExamID,
     key Student_ID     as StudentID,
     description        as Description,
     exam_score         as Score,
     
    _Stundents: redirected to parent ZC_STUDENTS_M // Make association public
}
