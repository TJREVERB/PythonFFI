import stdint
import stdbool
cdef extern from "ants-api.h":
    typedef enum
    {
        ANT_1,
        ANT_2,
        ANT_3,
        ANT_4
    } KANTSAnt;
    typedef struct
    {
        uint16_t raw_temp;
        uint16_t deploy_status;
        uint32_t uptime;
    } __attribute__((packed)) ants_telemetry;
    typedef enum
    {
        ANTS_OK,
        ANTS_ERROR,
        ANTS_ERROR_CONFIG,
        ANTS_ERROR_NOT_IMPLEMENTED 
    } KANTSStatus;
    KANTSStatus k_ants_init(char * bus, uint8_t primary, uint8_t secondary, uint8_t ant_count, uint32_t timeout)
    void k_ants_terminate()
    KANTSStatus k_ants_configure(KANTSController config)
    KANTSStatus k_ants_reset()
    KANTSStatus k_ants_arm()
    KANTSStatus k_ants_disarm()
    KANTSStatus k_ants_deploy(KANTSAnt antenna, bool override, uint8_t timeout)
    KANTSStatus k_ants_auto_deploy(uint8_t timeout)
    KANTSStatus k_ants_cancel_deploy()
    KANTSStatus k_ants_get_deploy_status(uint16_t * resp)
    KANTSStatus k_ants_get_uptime(uint32_t * uptime)
    KANTSStatus k_ants_get_system_telemetry(ants_telemetry * telem)
    KANTSStatus k_ants_get_activation_count(KANTSAnt antenna, uint8_t * count)
    KANTSStatus k_ants_get_activation_time(KANTSAnt antenna, uint16_t * time)
    KANTSStatus k_ants_watchdog_kick()
    KANTSStatus k_ants_watchdog_start()
    KANTSStatus k_ants_watchdog_stop()
    KANTSStatus k_ants_passthrough(const uint8_t * tx, int tx_len, uint8_t * rx,int rx_len)

def py_k_ants_init(bus: bytes,primary: bytes,secondary: bytes,ant_count: bytes,timeout: bytes) -> None:
    k_ants_init(bus,primary,secondary,ant_count,timeout)
def py_k_ants_terminate():
    k_ants_terminate(void)
def py_k_ants_configure(config: bytes) -> None:
    k_ants_configure(config)
def py_k_ants_reset():
    k_ants_reset(void)
def py_k_ants_arm():
    k_ants_arm(void)
def py_k_ants_disarm():
    k_ants_disarm(void)
def py_k_ants_deploy(antenna: bytes,override: bytes,timeout: bytes) -> None:
    k_ants_deploy(antenna,override,timeout)
def py_k_ants_auto_deploy(timeout: bytes) -> None:
    k_ants_auto_deploy(timeout)
def py_k_ants_cancel_deploy():
    k_ants_cancel_deploy(void)
def py_k_ants_get_deploy_status(resp: bytes) -> None:
    k_ants_get_deploy_status(bytes)
def py_k_ants_get_uptime(uptime: bytes) -> None:
    k_ants_get_uptime(uptime)
def py_k_ants_get_system_telemetry(telem: bytes) -> None:
    k_ants_get_system_telemetry(telem)
def py_k_ants_get_activation_count(antenna: bytes,count: bytes) -> None:
    k_ants_get_activation_count(antenna,count)
def py_k_ants_get_activation_time(antenna: bytes,time: bytes) -> None:
    k_ants_get_activation_time(antenna,time)
def py_k_ants_watchdog_kick():
    k_ants_watchdog_kick(void)
def py_k_ants_watchdog_start():
    k_ants_watchdog_start(void)
def py_k_ants_watchdog_stop():
    k_ants_watchdog_stop(void)
def py_k_ants_passthrough(tx: bytes,tx_len: bytes,rx: bytes,rx_len: bytes) -> None:
    k_ants_passthrough(tx,tx_len,rx,rx_len)
