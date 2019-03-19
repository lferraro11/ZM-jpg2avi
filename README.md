# ZM-jpg2avi
Script de Bash para convertir imágenes del ZoneMinder en video.

## Comenzando

### Requisitos
Tener instalado el paquete ffmpeg.
```
apt-get install ffmpeg
```

### Instrucciones
Exportar las imágenes deseadas desde el servidor de ZoneMinder. Luego, descomprimir.
```
tar -xzvf zmExport.tar.gz
```

Copiar el script en la carpeta "event".
```
mv ZM-build_record.sh events/
cd events/
```

Ejecutar script.
```
bash ZM-build_record.sh
```

## Resultado
La filmación se guarda con el nombre "Grabacion.avi".
