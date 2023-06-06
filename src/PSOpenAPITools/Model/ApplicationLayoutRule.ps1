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

.PARAMETER Effect
No description available.
.PARAMETER Condition
No description available.
.OUTPUTS

ApplicationLayoutRule<PSCustomObject>
#>

function Initialize-ApplicationLayoutRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Effect},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Condition}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ApplicationLayoutRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "effect" = ${Effect}
            "condition" = ${Condition}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationLayoutRule<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationLayoutRule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationLayoutRule<PSCustomObject>
#>
function ConvertFrom-JsonToApplicationLayoutRule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ApplicationLayoutRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ApplicationLayoutRule
        $AllProperties = ("effect", "condition")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "effect"))) { #optional property not found
            $Effect = $null
        } else {
            $Effect = $JsonParameters.PSobject.Properties["effect"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "condition"))) { #optional property not found
            $Condition = $null
        } else {
            $Condition = $JsonParameters.PSobject.Properties["condition"].value
        }

        $PSO = [PSCustomObject]@{
            "effect" = ${Effect}
            "condition" = ${Condition}
        }

        return $PSO
    }

}
