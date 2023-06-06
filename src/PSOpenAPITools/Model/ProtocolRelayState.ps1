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

.PARAMETER Format
No description available.
.OUTPUTS

ProtocolRelayState<PSCustomObject>
#>

function Initialize-ProtocolRelayState {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Format}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ProtocolRelayState' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "format" = ${Format}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProtocolRelayState<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProtocolRelayState<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProtocolRelayState<PSCustomObject>
#>
function ConvertFrom-JsonToProtocolRelayState {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ProtocolRelayState' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProtocolRelayState
        $AllProperties = ("format")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "format"))) { #optional property not found
            $Format = $null
        } else {
            $Format = $JsonParameters.PSobject.Properties["format"].value
        }

        $PSO = [PSCustomObject]@{
            "format" = ${Format}
        }

        return $PSO
    }

}
