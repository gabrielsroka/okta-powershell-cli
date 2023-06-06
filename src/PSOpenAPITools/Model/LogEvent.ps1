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

.PARAMETER Actor
No description available.
.PARAMETER AuthenticationContext
No description available.
.PARAMETER Client
No description available.
.PARAMETER DebugContext
No description available.
.PARAMETER DisplayMessage
No description available.
.PARAMETER EventType
No description available.
.PARAMETER LegacyEventType
No description available.
.PARAMETER Outcome
No description available.
.PARAMETER Published
No description available.
.PARAMETER Request
No description available.
.PARAMETER SecurityContext
No description available.
.PARAMETER Severity
No description available.
.PARAMETER Target
No description available.
.PARAMETER Transaction
No description available.
.PARAMETER Uuid
No description available.
.PARAMETER Version
No description available.
.OUTPUTS

LogEvent<PSCustomObject>
#>

function Initialize-LogEvent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Actor},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthenticationContext},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Client},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DebugContext},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayMessage},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EventType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LegacyEventType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Outcome},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Published},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Request},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SecurityContext},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Severity},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Target},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Transaction},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => LogEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "actor" = ${Actor}
            "authenticationContext" = ${AuthenticationContext}
            "client" = ${Client}
            "debugContext" = ${DebugContext}
            "displayMessage" = ${DisplayMessage}
            "eventType" = ${EventType}
            "legacyEventType" = ${LegacyEventType}
            "outcome" = ${Outcome}
            "published" = ${Published}
            "request" = ${Request}
            "securityContext" = ${SecurityContext}
            "severity" = ${Severity}
            "target" = ${Target}
            "transaction" = ${Transaction}
            "uuid" = ${Uuid}
            "version" = ${Version}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LogEvent<PSCustomObject>

.DESCRIPTION

Convert from JSON to LogEvent<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LogEvent<PSCustomObject>
#>
function ConvertFrom-JsonToLogEvent {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => LogEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LogEvent
        $AllProperties = ("actor", "authenticationContext", "client", "debugContext", "displayMessage", "eventType", "legacyEventType", "outcome", "published", "request", "securityContext", "severity", "target", "transaction", "uuid", "version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actor"))) { #optional property not found
            $Actor = $null
        } else {
            $Actor = $JsonParameters.PSobject.Properties["actor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authenticationContext"))) { #optional property not found
            $AuthenticationContext = $null
        } else {
            $AuthenticationContext = $JsonParameters.PSobject.Properties["authenticationContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "client"))) { #optional property not found
            $Client = $null
        } else {
            $Client = $JsonParameters.PSobject.Properties["client"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "debugContext"))) { #optional property not found
            $DebugContext = $null
        } else {
            $DebugContext = $JsonParameters.PSobject.Properties["debugContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayMessage"))) { #optional property not found
            $DisplayMessage = $null
        } else {
            $DisplayMessage = $JsonParameters.PSobject.Properties["displayMessage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventType"))) { #optional property not found
            $EventType = $null
        } else {
            $EventType = $JsonParameters.PSobject.Properties["eventType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "legacyEventType"))) { #optional property not found
            $LegacyEventType = $null
        } else {
            $LegacyEventType = $JsonParameters.PSobject.Properties["legacyEventType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outcome"))) { #optional property not found
            $Outcome = $null
        } else {
            $Outcome = $JsonParameters.PSobject.Properties["outcome"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "published"))) { #optional property not found
            $Published = $null
        } else {
            $Published = $JsonParameters.PSobject.Properties["published"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "request"))) { #optional property not found
            $Request = $null
        } else {
            $Request = $JsonParameters.PSobject.Properties["request"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "securityContext"))) { #optional property not found
            $SecurityContext = $null
        } else {
            $SecurityContext = $JsonParameters.PSobject.Properties["securityContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "severity"))) { #optional property not found
            $Severity = $null
        } else {
            $Severity = $JsonParameters.PSobject.Properties["severity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target"))) { #optional property not found
            $Target = $null
        } else {
            $Target = $JsonParameters.PSobject.Properties["target"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transaction"))) { #optional property not found
            $Transaction = $null
        } else {
            $Transaction = $JsonParameters.PSobject.Properties["transaction"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        $PSO = [PSCustomObject]@{
            "actor" = ${Actor}
            "authenticationContext" = ${AuthenticationContext}
            "client" = ${Client}
            "debugContext" = ${DebugContext}
            "displayMessage" = ${DisplayMessage}
            "eventType" = ${EventType}
            "legacyEventType" = ${LegacyEventType}
            "outcome" = ${Outcome}
            "published" = ${Published}
            "request" = ${Request}
            "securityContext" = ${SecurityContext}
            "severity" = ${Severity}
            "target" = ${Target}
            "transaction" = ${Transaction}
            "uuid" = ${Uuid}
            "version" = ${Version}
        }

        return $PSO
    }

}
