@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for Exsams'
define view entity ZI_EXAMS_M as select from Zdmo_exams 
association to parent ZI_STUDENTS_M as _Stundents
    on $projection.Student_ID = _Stundents.Student_ID
{
     key exam_id,
     key student_id as Student_ID,
     description,
     exam_score,
     
    _Stundents // Make association public
}
