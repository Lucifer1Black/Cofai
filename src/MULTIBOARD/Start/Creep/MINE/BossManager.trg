{
  "Id": 425570625,
  "Comment": null,
  "IsScript": true,
  "RunOnMapInit": false,
  "Script": "library BossManager\r\n    /* ===========================================================================\r\n     * BOSS MANAGER\r\n     * -----------------------------------------------------------------------\r\n     * Centraliza la gestión de jefes y mantiene compatibilidad con GUI.\r\n     * =========================================================================== */\r\n\r\n    globals\r\n        // Referencia interna (vJASS)\r\n        private unit currentActiveBoss = null\r\n    endglobals\r\n\r\n    // Función pública para registrar un nuevo jefe activo\r\n    public function Register takes unit u returns nothing\r\n        set currentActiveBoss = u\r\n        \r\n        // --- PUENTE DE COMPATIBILIDAD (LEGACY BRIDGE) ---\r\n        // Actualizamos las variables globales antiguas para que tus Multiboards\r\n        // y otros detonadores viejos sigan funcionando sin cambios.\r\n        set udg_Game_Boss = u\r\n        \r\n        // Si tienes variables específicas para Kil'jaeden o Arthas, \r\n        // podemos detectarlos por ID y asignarlos aquí:\r\n        if GetUnitTypeId(u) == 'N001' then // Ejemplo: ID de Boss Mazmorra\r\n             // set udg_Game_Boss_Kiljaeden = u \r\n        endif\r\n        \r\n        call BJDebugMsg(\"|cffFFcc00[SYSTEM]|r Nuevo Jefe Registrado: \" + GetUnitName(u))\r\n    endfunction\r\n\r\n    // Obtener el jefe actual (para otros sistemas vJASS)\r\n    public function GetCurrent takes nothing returns unit\r\n        return currentActiveBoss\r\n    endfunction\r\n\r\n    // Limpiar cuando el jefe muere\r\n    public function Clear takes nothing returns nothing\r\n        set currentActiveBoss = null\r\n        set udg_Game_Boss = null\r\n    endfunction\r\n\r\nendlibrary",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": []
}