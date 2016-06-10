﻿
Перем мУровниПриоритета;
Перем мНаименованиеУровней;

Перем Отладка Экспорт;
Перем Информация Экспорт;
Перем Предупреждение Экспорт;
Перем Ошибка Экспорт;
Перем КритичнаяОшибка Экспорт;
Перем Отключить Экспорт;

//////////////////////////////////////////////////////////////////////////////////

Функция НаименованиеУровня(Знач Уровень) Экспорт
	Возврат мНаименованиеУровней[Уровень];
КонецФункции


//////////////////////////////////////////////////////////////////////////////////
// СЛУЖЕБНЫЕ ПРОЦЕДУРЫ
//

Процедура Инициализация()
	
	ИнициализироватьУровни();
	ИнициализироватьНаименованияУровней();
	
КонецПроцедуры

Процедура ИнициализироватьУровни()
	
	мУровниПриоритета = Новый Структура;
	мУровниПриоритета.Вставить("Отладка"        , 0);
	мУровниПриоритета.Вставить("Информация"     , 1);
	мУровниПриоритета.Вставить("Предупреждение" , 2);
	мУровниПриоритета.Вставить("Ошибка"         , 3);
	мУровниПриоритета.Вставить("КритичнаяОшибка", 4);
	мУровниПриоритета.Вставить("Отключить"      , 5);
	
	мТекущийУровень = мУровниПриоритета.Информация;
	
	Для Каждого КлючИЗначение Из мУровниПриоритета Цикл
		ЭтотОбъект[КлючИЗначение.Ключ] = КлючИЗначение.Значение;
	КонецЦикла;
	
КонецПроцедуры

Процедура ИнициализироватьНаименованияУровней()
	
	мНаименованиеУровней = Новый Соответствие;
	мНаименованиеУровней.Вставить(мУровниПриоритета.Отладка        , "ОТЛАДКА");
	мНаименованиеУровней.Вставить(мУровниПриоритета.Информация     , "ИНФОРМАЦИЯ");
	мНаименованиеУровней.Вставить(мУровниПриоритета.Предупреждение , "ПРЕДУПРЕЖДЕНИЕ");
	мНаименованиеУровней.Вставить(мУровниПриоритета.Ошибка         , "ОШИБКА");
	мНаименованиеУровней.Вставить(мУровниПриоритета.КритичнаяОшибка, "КРИТИЧНАЯОШИБКА");
	мНаименованиеУровней.Вставить(мУровниПриоритета.Отключить      , "ОТКЛЮЧИТЬ");

КонецПроцедуры

Инициализация();