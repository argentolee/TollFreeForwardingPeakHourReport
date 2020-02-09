$LabelPassword_Click = {
}
$TBUsername_TextChanged = {
}
$Label1_Click = {
}
Import-Module ImportExcel
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12


$ButtonRun_Click = {
    $u = $TBUsername.Text
    $p = $MTBPassword.Text
    $dnis = $NUDDNIS.Text
    $timezone = $NUDTimeZone.Text
    $rangeStart = (Get-Date($DateTimeFrom.Value) -Format yyyyMMddHHmm)
    $rangeEnd = (Get-Date($DateTimeTo.Value) -Format yyyyMMddHHmm)    
    $reportName = $PSScriptRoot + "\CallReport" + $rangeStart + "-" + $rangeEnd +".csv"
    $excelName = $PSScriptRoot + "\CallReport" + $rangeStart + "-" + $rangeEnd +".xlsx"

$params = @{
    "u"        = $u
    "p"        = $p
    "format"   = "xml"
    "dnislist" = $dnis
    "timezone" = $timezone 
    "rangeStart" = $rangeStart
    "rangeEnd" = $rangeEnd
}



$result = Invoke-RestMethod 'https://tollfreeforwarding.com/api/?' -Method Get -body $params -ContentType "application/xml"
$result.records.call|Select-Object callid,dnis,appear,callingnumber,destinationnumber,setuptime,timeanswer,timeend,durationseconds|Export-Csv -NoTypeInformation -Path $reportName

$csv = Import-Csv -Path $reportName

foreach ($record in $csv)
{
    $record.setuptime =  get-date($record.setuptime)
    $record.timeanswer =  get-date($record.timeanswer)
    $record.timeend =  get-date($record.timeend)
}

$Excel =$csv|Export-Excel -Path $excelName `
 -Show -ClearSheet -AutoSize -PassThru `
 -WorkSheetname "CallReport"
 
 
$ws = $Excel.Workbook.Worksheets["CallReport"]
Set-Format -WorkSheet $ws -Range "F:F" -NumberFormat "dd/mm/yyyy hh:mm:ss"
Set-Format -WorkSheet $ws -Range "G:G" -NumberFormat "dd/mm/yyyy hh:mm:ss"
Set-Format -WorkSheet $ws -Range "H:H" -NumberFormat "dd/mm/yyyy hh:mm:ss"


Add-PivotTable -PivotTableName PeakHour -ExcelPackage $Excel -SourceWorkSheet $ws -PivotRows "setuptime" -PivotData @{setuptime='count'} `
-IncludePivotChart -ChartType ColumnClustered -GroupDateRow "setuptime" -GroupDatePart Hours 


Export-Excel -ExcelPackage $Excel -WorkSheetname "CallReport"-Show -AutoSize -AutoNameRange `


}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'Get-CallRecordsGUI.designer.ps1')
$DateTimeFrom.Value = (Get-Date).AddDays(-1).Date
$Form1.ShowDialog()