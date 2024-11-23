#!/bin/bash

DB_NAME="restaurant"
OUTPUT_FILE="../SELECT/selects.txt"

# Función para ejecutar y guardar el resultado de una consulta SQL
function ejecutar_y_guardar {
    local tabla=$1
    echo "Tabla: $tabla" >> "$OUTPUT_FILE"
    sudo mysql -D "$DB_NAME" -e "SELECT * FROM $tabla;" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

# Ejecutar y guardar el resultado de cada consulta para cada tabla
ejecutar_y_guardar "clients"
ejecutar_y_guardar "personal"
ejecutar_y_guardar "llista_negra"
ejecutar_y_guardar "tiquets"
ejecutar_y_guardar "horari"
ejecutar_y_guardar "categoria"
ejecutar_y_guardar "inventari"
ejecutar_y_guardar "carta"
ejecutar_y_guardar "carta_inventari_rel"
ejecutar_y_guardar "taules"
ejecutar_y_guardar "reserves"
ejecutar_y_guardar "comandes_domicili"
ejecutar_y_guardar "carta_horari_rel"
ejecutar_y_guardar "detall_comandes"

echo "¡Script completado! Los resultados se han guardado en $OUTPUT_FILE"
