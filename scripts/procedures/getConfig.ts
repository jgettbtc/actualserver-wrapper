// To utilize the default config system built, this file is required. It defines the *structure* of the configuration file. These structured options display as changeable UI elements within the "Config" section of the service details page in the Embassy UI.

import { compat, types as T } from "../deps.ts";

export const getConfig: T.ExpectedExports.getConfig = compat.getConfig({
    "lan-address": {
        "name": "LAN Address",
        "description": "The LAN address of the network interface",
        "type": "pointer",
        "subtype": "package",
        "package-id": "actualserver",
        "target": "lan-address",
        "interface": "main",
    }
});
