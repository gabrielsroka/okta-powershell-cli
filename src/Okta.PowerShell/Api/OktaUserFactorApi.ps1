#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Activate a Factor

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER FactorId
No description available.

.PARAMETER Body
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserFactor
#>
function Invoke-OktaActivateFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FactorId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Body},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaActivateFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/{factorId}/lifecycle/activate'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling activateFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$FactorId) {
            throw "Error! The required parameter `FactorId` missing when calling activateFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{factorId}', [System.Web.HTTPUtility]::UrlEncode($FactorId))

        $LocalVarBodyParameter = $Body | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "UserFactor" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete a Factor

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER FactorId
No description available.

.PARAMETER RemoveRecoveryEnrollment
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-OktaDeleteFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FactorId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${RemoveRecoveryEnrollment},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaDeleteFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/{factorId}'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling deleteFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$FactorId) {
            throw "Error! The required parameter `FactorId` missing when calling deleteFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{factorId}', [System.Web.HTTPUtility]::UrlEncode($FactorId))

        if ($RemoveRecoveryEnrollment) {
            $LocalVarQueryParameters['removeRecoveryEnrollment'] = $RemoveRecoveryEnrollment
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Enroll a Factor

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER Body
Factor

.PARAMETER UpdatePhone
No description available.

.PARAMETER TemplateId
id of SMS template (only for SMS factor)

.PARAMETER TokenLifetimeSeconds
No description available.

.PARAMETER Activate
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserFactor
#>
function Invoke-OktaEnrollFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Body},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${UpdatePhone},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${TokenLifetimeSeconds},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Activate},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaEnrollFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling enrollFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))

        if ($UpdatePhone) {
            $LocalVarQueryParameters['updatePhone'] = $UpdatePhone
        }

        if ($TemplateId) {
            $LocalVarQueryParameters['templateId'] = $TemplateId
        }

        if ($TokenLifetimeSeconds) {
            $LocalVarQueryParameters['tokenLifetimeSeconds'] = $TokenLifetimeSeconds
        }

        if ($Activate) {
            $LocalVarQueryParameters['activate'] = $Activate
        }

        if (!$Body) {
            throw "Error! The required parameter `Body` missing when calling enrollFactor."
        }

        $LocalVarBodyParameter = $Body | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "UserFactor" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Retrieve a Factor

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER FactorId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserFactor
#>
function Get-OktaFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FactorId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-OktaFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/{factorId}'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling getFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$FactorId) {
            throw "Error! The required parameter `FactorId` missing when calling getFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{factorId}', [System.Web.HTTPUtility]::UrlEncode($FactorId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "UserFactor" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Retrieve a Factor Transaction Status

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER FactorId
No description available.

.PARAMETER TransactionId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

VerifyUserFactorResponse
#>
function Get-OktaFactorTransactionStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FactorId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TransactionId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-OktaFactorTransactionStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/{factorId}/transactions/{transactionId}'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling getFactorTransactionStatus."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$FactorId) {
            throw "Error! The required parameter `FactorId` missing when calling getFactorTransactionStatus."
        }
        $LocalVarUri = $LocalVarUri.replace('{factorId}', [System.Web.HTTPUtility]::UrlEncode($FactorId))
        if (!$TransactionId) {
            throw "Error! The required parameter `TransactionId` missing when calling getFactorTransactionStatus."
        }
        $LocalVarUri = $LocalVarUri.replace('{transactionId}', [System.Web.HTTPUtility]::UrlEncode($TransactionId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "VerifyUserFactorResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List all Factors

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserFactor[]
#>
function Invoke-OktaListFactors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaListFactors' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling listFactors."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "UserFactor[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List all Supported Factors

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserFactor[]
#>
function Invoke-OktaListSupportedFactors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaListSupportedFactors' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/catalog'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling listSupportedFactors."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "UserFactor[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List all Supported Security Questions

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SecurityQuestion[]
#>
function Invoke-OktaListSupportedSecurityQuestions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaListSupportedSecurityQuestions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/questions'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling listSupportedSecurityQuestions."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SecurityQuestion[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Resend factor enrollment

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER FactorId
No description available.

.PARAMETER UserFactor
Factor

.PARAMETER TemplateId
id of SMS template (only for SMS factor)

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserFactor
#>
function Invoke-OktaResendEnrollFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FactorId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${UserFactor},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaResendEnrollFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/{factorId}/resend'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling resendEnrollFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$FactorId) {
            throw "Error! The required parameter `FactorId` missing when calling resendEnrollFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{factorId}', [System.Web.HTTPUtility]::UrlEncode($FactorId))

        if ($TemplateId) {
            $LocalVarQueryParameters['templateId'] = $TemplateId
        }

        if (!$UserFactor) {
            throw "Error! The required parameter `UserFactor` missing when calling resendEnrollFactor."
        }

        $LocalVarBodyParameter = $UserFactor | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "UserFactor" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Verify an MFA Factor

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER FactorId
No description available.

.PARAMETER TemplateId
No description available.

.PARAMETER TokenLifetimeSeconds
No description available.

.PARAMETER XForwardedFor
No description available.

.PARAMETER UserAgent
No description available.

.PARAMETER AcceptLanguage
No description available.

.PARAMETER Body
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

VerifyUserFactorResponse
#>
function Test-OktaFactor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FactorId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${TokenLifetimeSeconds},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XForwardedFor},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserAgent},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AcceptLanguage},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Body},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-OktaFactor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/factors/{factorId}/verify'
        if (!$UserId) {
            throw "Error! The required parameter `UserId` missing when calling verifyFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$FactorId) {
            throw "Error! The required parameter `FactorId` missing when calling verifyFactor."
        }
        $LocalVarUri = $LocalVarUri.replace('{factorId}', [System.Web.HTTPUtility]::UrlEncode($FactorId))

        if ($XForwardedFor) {
            $LocalVarHeaderParameters['X-Forwarded-For'] = $XForwardedFor
        }

        if ($UserAgent) {
            $LocalVarHeaderParameters['User-Agent'] = $UserAgent
        }

        if ($AcceptLanguage) {
            $LocalVarHeaderParameters['Accept-Language'] = $AcceptLanguage
        }

        if ($TemplateId) {
            $LocalVarQueryParameters['templateId'] = $TemplateId
        }

        if ($TokenLifetimeSeconds) {
            $LocalVarQueryParameters['tokenLifetimeSeconds'] = $TokenLifetimeSeconds
        }

        $LocalVarBodyParameter = $Body | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "VerifyUserFactorResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
