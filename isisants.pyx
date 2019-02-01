cdef extern from "ants-api.h":
    KANTSStatus k_ants_init(char * bus, uint8_t primary, uint8_t secondary, uint8_t ant_count, uint32_t timeout)
    void k_ants_terminate(void)
    KANTSStatus k_ants_configure(KANTSController config)
    KANTSStatus k_ants_reset(void)
    KANTSStatus k_ants_arm(void)
    KANTSStatus k_ants_disarm(void)
    KANTSStatus k_ants_deploy(KANTSAnt antenna, bool override, uint8_t timeout)
    KANTSStatus k_ants_auto_deploy(uint8_t timeout)
    KANTSStatus k_ants_cancel_deploy(void)
    KANTSStatus k_ants_get_deploy_status(uint16_t * resp)
    KANTSStatus k_ants_get_uptime(uint32_t * uptime)
    KANTSStatus k_ants_get_system_telemetry(ants_telemetry * telem)
    KANTSStatus k_ants_get_activation_count(KANTSAnt antenna, uint8_t * count)
    KANTSStatus k_ants_get_activation_time(KANTSAnt antenna, uint16_t * time)
    KANTSStatus k_ants_watchdog_kick(void)
    KANTSStatus k_ants_watchdog_start(void)
    KANTSStatus k_ants_watchdog_stop(void)
    KANTSStatus k_ants_passthrough(const uint8_t * tx, int tx_len, uint8_t * rx,int rx_len)

def py_k_ants_init(bus: bytes,primary: bytes,secondary: bytes,ant_count: bytes,timeout: bytes) -> None:
    k_ants_init(bus,primary,secondary,ant_count,timeout)
def py_k_ants_terminate(void):
    k_ants_terminate()
def py_k_ants_configure(config: bytes) -> None:
    k_ants_configure(config)
def py_k_ants_reset(void):
    k_ants_reset()
def py_k_ants_arm(void):
    k_ants_arm()
def py_k_ants_disarm(void):
    k_ants_disarm()
def py_k_ants_deploy(antenna: bytes,override: bytes,timeout: bytes) -> None:
    k_ants_deploy(antenna,override,timeout)
def py_k_ants_auto_deploy(timeout: bytes) -> None:
    k_ants_auto_deploy(timeout)
def py_k_ants_cancel_deploy(void):
    k_ants_cancel_deploy()
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
def py_k_ants_watchdog_kick(void):
    k_ants_watchdog_kick()
def py_k_ants_watchdog_start(void):
    k_ants_watchdog_start()
def py_k_ants_watchdog_stop(void):
    k_ants_watchdog_stop()
def py_k_ants_passthrough(tx: bytes,tx_len: bytes,rx: bytes,rx_len: bytes) -> None:
    k_ants_passthrough(tx,tx_len,rx,rx_len)
