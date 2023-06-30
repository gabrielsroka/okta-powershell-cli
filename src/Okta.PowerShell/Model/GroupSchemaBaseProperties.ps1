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

.PARAMETER Description
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

GroupSchemaBaseProperties<PSCustomObject>
#>

function Initialize-OktaGroupSchemaBaseProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaGroupSchemaBaseProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GroupSchemaBaseProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to GroupSchemaBaseProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GroupSchemaBaseProperties<PSCustomObject>
#>
function ConvertFrom-OktaJsonToGroupSchemaBaseProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaGroupSchemaBaseProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaGroupSchemaBaseProperties
        $AllProperties = ("description", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "name" = ${Name}
        }

        return $PSO
    }

}
