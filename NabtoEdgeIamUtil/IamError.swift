//
// Created by Ulrik Gammelby on 15/06/2022.
//

import Foundation

/**
 * IAM Util specific error codes.
 */
public enum IamError: Error, Equatable {
    /**
     * Operation completed successfully.
     */
    case OK

    /**
     * Specified input is invalid on the device, see the specific endpoint document for restrictions on input, e.g.
     * https://docs.nabto.com/developer/api-reference/coap/iam/post-users.html#request
     */
    case INVALID_INPUT

    /**
     * The operation requested creating a user or assigning a username that was already in use on the device.
     */
    case USERNAME_EXISTS

    /**
     * The operation referenced a user on the device that does not exist.
     */
    case USER_DOES_NOT_EXIST

    /**
     * If the initial user was already paired when attempting to perform an initial pairing scenario.
     */
    case INITIAL_USER_ALREADY_PAIRED

    /**
     * The operation referenced a role on the device that does not exist.
     */
    case ROLE_DOES_NOT_EXIST

    /**
     * The client could be authenticated towards the device using the specified credentials.
     */
    case AUTHENTICATION_ERROR

    /**
     * The client has attempted to authenticate too many times with a wrong password.
     */
    case TOO_MANY_WRONG_PASSWORD_ATTEMPTS

    /**
     * The requested pairing mode is disabled on the device.
     */
    case PAIRING_MODE_DISABLED

    /**
     * The the device configuration does not support the requested operation.
     */
    case BLOCKED_BY_DEVICE_CONFIGURATION

    /**
     * Unexpected response from device's IAM service.
     */
    case INVALID_RESPONSE(error: String)

    /**
     * The embedded device does not provide a Nabto Edge IAM implementation.
     */
    case IAM_NOT_SUPPORTED

    /**
     * An error occurred in the underlying Nabto Edge Client SDK when invoking the device, for instance the device
     * was offline when invoking an operation.
     */
    case API_ERROR(cause: NabtoEdgeClientError)

    /**
     * Something unspecified failed.
     */
    case FAILED
}
