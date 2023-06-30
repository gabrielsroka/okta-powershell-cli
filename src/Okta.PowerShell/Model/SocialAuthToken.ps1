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

.PARAMETER ExpiresAt
No description available.
.PARAMETER Id
No description available.
.PARAMETER Scopes
No description available.
.PARAMETER Token
No description available.
.PARAMETER TokenAuthScheme
No description available.
.PARAMETER TokenType
No description available.
.OUTPUTS

SocialAuthToken<PSCustomObject>
#>

function Initialize-OktaSocialAuthToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scopes},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Token},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TokenAuthScheme},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TokenType}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaSocialAuthToken' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expiresAt" = ${ExpiresAt}
            "id" = ${Id}
            "scopes" = ${Scopes}
            "token" = ${Token}
            "tokenAuthScheme" = ${TokenAuthScheme}
            "tokenType" = ${TokenType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SocialAuthToken<PSCustomObject>

.DESCRIPTION

Convert from JSON to SocialAuthToken<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SocialAuthToken<PSCustomObject>
#>
function ConvertFrom-OktaJsonToSocialAuthToken {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaSocialAuthToken' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaSocialAuthToken
        $AllProperties = ("expiresAt", "id", "scopes", "token", "tokenAuthScheme", "tokenType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scopes"))) { #optional property not found
            $Scopes = $null
        } else {
            $Scopes = $JsonParameters.PSobject.Properties["scopes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "token"))) { #optional property not found
            $Token = $null
        } else {
            $Token = $JsonParameters.PSobject.Properties["token"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tokenAuthScheme"))) { #optional property not found
            $TokenAuthScheme = $null
        } else {
            $TokenAuthScheme = $JsonParameters.PSobject.Properties["tokenAuthScheme"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tokenType"))) { #optional property not found
            $TokenType = $null
        } else {
            $TokenType = $JsonParameters.PSobject.Properties["tokenType"].value
        }

        $PSO = [PSCustomObject]@{
            "expiresAt" = ${ExpiresAt}
            "id" = ${Id}
            "scopes" = ${Scopes}
            "token" = ${Token}
            "tokenAuthScheme" = ${TokenAuthScheme}
            "tokenType" = ${TokenType}
        }

        return $PSO
    }

}
