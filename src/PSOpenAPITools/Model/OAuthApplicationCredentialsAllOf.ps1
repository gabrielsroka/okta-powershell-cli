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

.PARAMETER OauthClient
No description available.
.OUTPUTS

OAuthApplicationCredentialsAllOf<PSCustomObject>
#>

function Initialize-OAuthApplicationCredentialsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OauthClient}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => OAuthApplicationCredentialsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "oauthClient" = ${OauthClient}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OAuthApplicationCredentialsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to OAuthApplicationCredentialsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OAuthApplicationCredentialsAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToOAuthApplicationCredentialsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => OAuthApplicationCredentialsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OAuthApplicationCredentialsAllOf
        $AllProperties = ("oauthClient")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "oauthClient"))) { #optional property not found
            $OauthClient = $null
        } else {
            $OauthClient = $JsonParameters.PSobject.Properties["oauthClient"].value
        }

        $PSO = [PSCustomObject]@{
            "oauthClient" = ${OauthClient}
        }

        return $PSO
    }

}
