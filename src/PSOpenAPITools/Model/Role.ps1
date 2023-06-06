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

.PARAMETER AssignmentType
No description available.
.PARAMETER Created
No description available.
.PARAMETER Description
No description available.
.PARAMETER Id
No description available.
.PARAMETER Label
No description available.
.PARAMETER LastUpdated
No description available.
.PARAMETER Status
No description available.
.PARAMETER Type
No description available.
.PARAMETER Embedded
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

Role<PSCustomObject>
#>

function Initialize-Role {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssignmentType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Embedded},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => Role' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "assignmentType" = ${AssignmentType}
            "created" = ${Created}
            "description" = ${Description}
            "id" = ${Id}
            "label" = ${Label}
            "lastUpdated" = ${LastUpdated}
            "status" = ${Status}
            "type" = ${Type}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Role<PSCustomObject>

.DESCRIPTION

Convert from JSON to Role<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Role<PSCustomObject>
#>
function ConvertFrom-JsonToRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => Role' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Role
        $AllProperties = ("assignmentType", "created", "description", "id", "label", "lastUpdated", "status", "type", "_embedded", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignmentType"))) { #optional property not found
            $AssignmentType = $null
        } else {
            $AssignmentType = $JsonParameters.PSobject.Properties["assignmentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_embedded"))) { #optional property not found
            $Embedded = $null
        } else {
            $Embedded = $JsonParameters.PSobject.Properties["_embedded"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "assignmentType" = ${AssignmentType}
            "created" = ${Created}
            "description" = ${Description}
            "id" = ${Id}
            "label" = ${Label}
            "lastUpdated" = ${LastUpdated}
            "status" = ${Status}
            "type" = ${Type}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }

        return $PSO
    }

}
