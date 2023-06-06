#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum InlineHookType.

.DESCRIPTION

No description available.
#>

enum InlineHookType {
    # enum value: "com.okta.import.transform"
    import_transform
    # enum value: "com.okta.oauth2.tokens.transform"
    oauth2_tokens_transform
    # enum value: "com.okta.saml.tokens.transform"
    saml_tokens_transform
    # enum value: "com.okta.user.credential.password.import"
    user_credential_password_import
    # enum value: "com.okta.user.pre-registration"
    user_pre_registration
}
