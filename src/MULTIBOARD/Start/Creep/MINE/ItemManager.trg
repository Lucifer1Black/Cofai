{
  "Id": 2040587534,
  "Comment": null,
  "IsScript": true,
  "RunOnMapInit": false,
  "Script": "library ItemManager\r\n    /* ===========================================================================\r\n     * ITEM MANAGER\r\n     * -----------------------------------------------------------------------\r\n     * Gestiona la creación segura de items y drops.\r\n     * =========================================================================== */\r\n\r\n    // Crea un item en coordenadas X,Y sin generar fugas de \"Location\" (Puntos)\r\n    public function Spawn takes integer itemId, real x, real y returns item\r\n        local item i = CreateItem(itemId, x, y)\r\n        \r\n        // Aquí puedes añadir lógica extra, como:\r\n        // - Efecto visual al caer (Spawn sound/effect)\r\n        // - Hacer que el item sea invulnerable\r\n        call SetItemInvulnerable(i, true)\r\n        \r\n        // Efecto visual simple de \"poof\" al aparecer\r\n        call DestroyEffect(AddSpecialEffect(\"Abilities\\\\Spells\\\\Human\\\\MassTeleport\\\\MassTeleportTarget.mdl\", x, y))\r\n        \r\n        return i\r\n    endfunction\r\n\r\n    // Función para limpiar items del suelo (útil para eventos de limpieza)\r\n    public function RemoveItem takes item i returns nothing\r\n        if i != null then\r\n            call RemoveItem(i)\r\n        endif\r\n    endfunction\r\n\r\nendlibrary",
  "Events": [],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": []
}