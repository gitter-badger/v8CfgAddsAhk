Перем Обмен;

Процедура ОбработкаТекста(Данные,Приемник)
	
	Данные = СокрП(Данные);
	РегВыражение = Новый РегулярноеВыражение("^");
	Данные = РегВыражение.Заменить(Данные,"|");
	Обмен.ЗаписатьРезультатВФайл(Приемник,Данные);

КонецПроцедуры

Процедура Выполнить(Параметры)
	
	ИмяФайла = "tmp\module.txt";
	Если Параметры.Количество() > 0 Тогда
		ИмяФайла = Параметры[0];
	КонецЕсли;
	Приемник = ИмяФайла;

	Если Параметры.Количество() > 1 Тогда
		Приемник = Параметры[1];
	КонецЕсли;

	ОбработкаТекста(Обмен.ПолучитьТекстИзФайла(ИмяФайла),Приемник);

КонецПроцедуры

Обмен = ЗагрузитьСценарий("scripts\Обмен.os");

Выполнить(АргументыКоманднойСтроки);

//МассивПарамеров = новый Массив;
//МассивПарамеров.Добавить("c:\work\portable\v8CfgAddsAhk\tmp\module.txt");
//МассивПарамеров.Добавить("c:\work\portable\v8CfgAddsAhk\tmp\new.module.txt");

//Выполнить(МассивПарамеров);