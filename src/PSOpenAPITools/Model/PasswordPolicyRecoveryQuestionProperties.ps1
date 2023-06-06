#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Complexity
No description available.
.OUTPUTS

PasswordPolicyRecoveryQuestionProperties<PSCustomObject>
#>

function Initialize-PasswordPolicyRecoveryQuestionProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Complexity}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => PasswordPolicyRecoveryQuestionProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "complexity" = ${Complexity}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyRecoveryQuestionProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyRecoveryQuestionProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyRecoveryQuestionProperties<PSCustomObject>
#>
function ConvertFrom-JsonToPasswordPolicyRecoveryQuestionProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => PasswordPolicyRecoveryQuestionProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PasswordPolicyRecoveryQuestionProperties
        $AllProperties = ("complexity")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "complexity"))) { #optional property not found
            $Complexity = $null
        } else {
            $Complexity = $JsonParameters.PSobject.Properties["complexity"].value
        }

        $PSO = [PSCustomObject]@{
            "complexity" = ${Complexity}
        }

        return $PSO
    }

}
