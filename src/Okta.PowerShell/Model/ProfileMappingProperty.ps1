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

.PARAMETER Expression
No description available.
.PARAMETER PushStatus
No description available.
.OUTPUTS

ProfileMappingProperty<PSCustomObject>
#>

function Initialize-OktaProfileMappingProperty {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expression},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DONT_PUSH", "PUSH")]
        [PSCustomObject]
        ${PushStatus}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaProfileMappingProperty' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
            "pushStatus" = ${PushStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProfileMappingProperty<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProfileMappingProperty<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProfileMappingProperty<PSCustomObject>
#>
function ConvertFrom-OktaJsonToProfileMappingProperty {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaProfileMappingProperty' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaProfileMappingProperty
        $AllProperties = ("expression", "pushStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expression"))) { #optional property not found
            $Expression = $null
        } else {
            $Expression = $JsonParameters.PSobject.Properties["expression"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pushStatus"))) { #optional property not found
            $PushStatus = $null
        } else {
            $PushStatus = $JsonParameters.PSobject.Properties["pushStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
            "pushStatus" = ${PushStatus}
        }

        return $PSO
    }

}
