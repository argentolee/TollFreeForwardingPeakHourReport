$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$LabelTo = $null
[System.Windows.Forms.DateTimePicker]$DateTimeTo = $null
[System.Windows.Forms.Label]$From = $null
[System.Windows.Forms.Button]$ButtonRun = $null
[System.Windows.Forms.DateTimePicker]$DateTimeFrom = $null
[System.Windows.Forms.TextBox]$TBUsername = $null
[System.Windows.Forms.MaskedTextBox]$MTBPassword = $null
[System.Windows.Forms.Label]$LabelUserName = $null
[System.Windows.Forms.Label]$LabelPassword = $null
[System.Windows.Forms.NumericUpDown]$NUDDNIS = $null
[System.Windows.Forms.Label]$LabelDNIS = $null
[System.Windows.Forms.NumericUpDown]$NUDTimeZone = $null
[System.Windows.Forms.Label]$LabelTimeZone = $null
function InitializeComponent
{
$LabelTo = (New-Object -TypeName System.Windows.Forms.Label)
$DateTimeTo = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$From = (New-Object -TypeName System.Windows.Forms.Label)
$ButtonRun = (New-Object -TypeName System.Windows.Forms.Button)
$DateTimeFrom = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$TBUsername = (New-Object -TypeName System.Windows.Forms.TextBox)
$MTBPassword = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
$LabelUserName = (New-Object -TypeName System.Windows.Forms.Label)
$LabelPassword = (New-Object -TypeName System.Windows.Forms.Label)
$NUDDNIS = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
$LabelDNIS = (New-Object -TypeName System.Windows.Forms.Label)
$NUDTimeZone = (New-Object -TypeName System.Windows.Forms.NumericUpDown)
$LabelTimeZone = (New-Object -TypeName System.Windows.Forms.Label)
([System.ComponentModel.ISupportInitialize]$NUDDNIS).BeginInit()
([System.ComponentModel.ISupportInitialize]$NUDTimeZone).BeginInit()
$Form1.SuspendLayout()
#
#LabelTo
#
$LabelTo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]199))
$LabelTo.Name = [System.String]'LabelTo'
$LabelTo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelTo.TabIndex = [System.Int32]3
$LabelTo.Text = [System.String]'To'
$LabelTo.UseCompatibleTextRendering = $true
#
#DateTimeTo
#
$DateTimeTo.CustomFormat = [System.String]'dd/MM/yyyy | HH:mm tt'
$DateTimeTo.Format = [System.Windows.Forms.DateTimePickerFormat]::Custom
$DateTimeTo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]187))
$DateTimeTo.Name = [System.String]'DateTimeTo'
$DateTimeTo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]212,[System.Int32]21))
$DateTimeTo.TabIndex = [System.Int32]1
#
#From
#
$From.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]160))
$From.Name = [System.String]'From'
$From.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$From.TabIndex = [System.Int32]2
$From.Text = [System.String]'From'
$From.UseCompatibleTextRendering = $true
#
#ButtonRun
#
$ButtonRun.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]251,[System.Int32]239))
$ButtonRun.Name = [System.String]'ButtonRun'
$ButtonRun.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ButtonRun.TabIndex = [System.Int32]4
$ButtonRun.Text = [System.String]'Run'
$ButtonRun.UseCompatibleTextRendering = $true
$ButtonRun.UseVisualStyleBackColor = $true
$ButtonRun.add_Click($ButtonRun_Click)
#
#DateTimeFrom
#
$DateTimeFrom.CustomFormat = [System.String]'dd/MM/yyyy | HH:mm tt'
$DateTimeFrom.Format = [System.Windows.Forms.DateTimePickerFormat]::Custom
$DateTimeFrom.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]156))
$DateTimeFrom.Name = [System.String]'DateTimeFrom'
$DateTimeFrom.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]212,[System.Int32]21))
$DateTimeFrom.TabIndex = [System.Int32]0
#
#TBUsername
#
$TBUsername.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]9))
$TBUsername.Name = [System.String]'TBUsername'
$TBUsername.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]208,[System.Int32]21))
$TBUsername.TabIndex = [System.Int32]5
#
#MTBPassword
#
$MTBPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]36))
$MTBPassword.Name = [System.String]'MTBPassword'
$MTBPassword.PasswordChar = [System.Char]'*'
$MTBPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]208,[System.Int32]21))
$MTBPassword.TabIndex = [System.Int32]6
#
#LabelUserName
#
$LabelUserName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$LabelUserName.Name = [System.String]'LabelUserName'
$LabelUserName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelUserName.TabIndex = [System.Int32]7
$LabelUserName.Text = [System.String]'Username'
$LabelUserName.UseCompatibleTextRendering = $true
#
#LabelPassword
#
$LabelPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]36))
$LabelPassword.Name = [System.String]'LabelPassword'
$LabelPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelPassword.TabIndex = [System.Int32]8
$LabelPassword.Text = [System.String]'Password'
$LabelPassword.UseCompatibleTextRendering = $true
#
#NUDDNIS
#
$NUDDNIS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]63))
$NUDDNIS.Maximum = (New-Object -TypeName System.Decimal -ArgumentList @(,[System.Int32[]]@([System.Int32]1410065407,[System.Int32]2,[System.Int32]0,[System.Int32]0)))
$NUDDNIS.Name = [System.String]'NUDDNIS'
$NUDDNIS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]212,[System.Int32]21))
$NUDDNIS.TabIndex = [System.Int32]10
$NUDDNIS.Value = (New-Object -TypeName System.Decimal -ArgumentList @(,[System.Int32[]]@([System.Int32]400120,[System.Int32]0,[System.Int32]0,[System.Int32]0)))
#
#LabelDNIS
#
$LabelDNIS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]63))
$LabelDNIS.Name = [System.String]'LabelDNIS'
$LabelDNIS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$LabelDNIS.TabIndex = [System.Int32]11
$LabelDNIS.Text = [System.String]'DNIS'
$LabelDNIS.UseCompatibleTextRendering = $true
#
#NUDTimeZone
#
$NUDTimeZone.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]118,[System.Int32]90))
$NUDTimeZone.Maximum = (New-Object -TypeName System.Decimal -ArgumentList @(,[System.Int32[]]@([System.Int32]24,[System.Int32]0,[System.Int32]0,[System.Int32]0)))
$NUDTimeZone.Minimum = (New-Object -TypeName System.Decimal -ArgumentList @(,[System.Int32[]]@([System.Int32]24,[System.Int32]0,[System.Int32]0,[System.Int32]-2147483648)))
$NUDTimeZone.Name = [System.String]'NUDTimeZone'
$NUDTimeZone.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]21))
$NUDTimeZone.TabIndex = [System.Int32]12
$NUDTimeZone.Value = (New-Object -TypeName System.Decimal -ArgumentList @(,[System.Int32[]]@([System.Int32]8,[System.Int32]0,[System.Int32]0,[System.Int32]0)))
#
#LabelTimeZone
#
$LabelTimeZone.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]86))
$LabelTimeZone.Name = [System.String]'LabelTimeZone'
$LabelTimeZone.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]25))
$LabelTimeZone.TabIndex = [System.Int32]13
$LabelTimeZone.Text = [System.String]'TimeZone (GMT)'
$LabelTimeZone.UseCompatibleTextRendering = $true
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]331))
$Form1.Controls.Add($LabelTimeZone)
$Form1.Controls.Add($NUDTimeZone)
$Form1.Controls.Add($LabelDNIS)
$Form1.Controls.Add($NUDDNIS)
$Form1.Controls.Add($LabelPassword)
$Form1.Controls.Add($LabelUserName)
$Form1.Controls.Add($MTBPassword)
$Form1.Controls.Add($TBUsername)
$Form1.Controls.Add($ButtonRun)
$Form1.Controls.Add($LabelTo)
$Form1.Controls.Add($From)
$Form1.Controls.Add($DateTimeTo)
$Form1.Controls.Add($DateTimeFrom)
$Form1.MaximizeBox = $false
$Form1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]370))
$Form1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]370,[System.Int32]370))
$Form1.Text = [System.String]'TFF Peak Call Report'
([System.ComponentModel.ISupportInitialize]$NUDDNIS).EndInit()
([System.ComponentModel.ISupportInitialize]$NUDTimeZone).EndInit()
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelTo -Value $LabelTo -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name DateTimeTo -Value $DateTimeTo -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name From -Value $From -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ButtonRun -Value $ButtonRun -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name DateTimeFrom -Value $DateTimeFrom -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TBUsername -Value $TBUsername -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name MTBPassword -Value $MTBPassword -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelUserName -Value $LabelUserName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelPassword -Value $LabelPassword -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name NUDDNIS -Value $NUDDNIS -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelDNIS -Value $LabelDNIS -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name NUDTimeZone -Value $NUDTimeZone -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LabelTimeZone -Value $LabelTimeZone -MemberType NoteProperty
}
. InitializeComponent
