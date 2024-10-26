extends Label

func _ready():
	# Получаем основную информацию о устройстве
	var device_name = OS.get_name()  # Имя операционной системы
	var device_version = OS.get_version()  # Версия операционной системы
	var device_cpu_count = OS.get_processor_count()  # Количество процессоров
	var cpu_info = OS.get_processor_name()  # Имя процессора
	var is_debug_build = OS.is_debug_build()  # Проверка, является ли сборка отладочной

	# Локализованные строки
	var info_text = "Устройство: %s\nВерсия: %s\nПроцессы: %d\nИмя процессора: %s\nДебаг: %s" % [
		device_name,
		device_version,
		device_cpu_count,
		cpu_info,
		str(is_debug_build)
	]
	
	# Устанавливаем текст в лейбл
	text = info_text
