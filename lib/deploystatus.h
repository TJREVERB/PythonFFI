typedef enum {
    ANTS_OK,                     /**< Requested function completed successfully */
    ANTS_ERROR,                  /**< Generic error */
    ANTS_ERROR_CONFIG,           /**< Configuration error */
    ANTS_ERROR_NOT_IMPLEMENTED   /**< Requested function has not been implemented for the subsystem */
} KANTSStatus;
KANTSStatus p_k_ants_get_deploy_status();
