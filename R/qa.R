#' Square a Number
#'
#' This function takes a numeric value and returns its square.
#'
#'@details
#' ------Konwergencja------
#'
#' Istotność parametrów modelu: Istotne jeśli pvalue<0.05
#' Jak nieistotne to nie interesuje nas ocena parametru
#'
#' - Współczynnik regresji
#' Ujemny współczynnik regresji sugeruje, że wartości zależna maleją w miarę wzrostu wartości niezależna.
#' Taki trend może wskazywać na zbieżność do pewnego poziomu równowagi w długim okresie (konwergencję).
#'
#' - Współczynnik zbieżności
#' X100 to średni procent odległości pokonywanej w ciągu roku, dodatni to jest konwergencja,
#' Ujemny to dywergencja (rozbieżność).
#'
#' - Współczynnik połowicznej zbieżności
#' Ile jednostek czasu potrzeba żeby dystans między obiektami zmniejszył się o połowę.
#'
#' ------Drzewa-------
#' Czytając drzewo w konsoli:
#' 1. Ile jest obserwacji.
#' 2. Proporcje % grupy.
#' Każde piętro w poszczególnych linijkach używaj i i lub. Po gałęziach dajemy i.
#' Lewa gałąź: warunek prawdziwy (spełniony).
#' Prawa gałąź: warunek fałszywy (niespełniony).
#'
#' - Skuteczność
#' Skuteczność 0,96 to znaczy, że taki odsetek bankrutów i nie bankrutów ze zbioru uczącego zostało poprawnie zakwalifikowane przez model.
#'
#' - Czułość
#' Czułość 0,8 to znaczy, że 80% bankrutów (prawa kolumna) ze zbioru uczącego zostało prawidłowo zakwalifikowanych.
#'
#' - Specyficzność
#' Specyficzność 1, 100% niebankrutów (lewa kolumna) ze zbioru uczącego zostało poprawnie zakwalifikowanych.
#' Jak zbiór uczący ma w tych parametrach same 1, to może być przeuczony.
#'
#' - Confusion Matrix
#' Prawy górny- błąd 1 typ, Lewy dolny- błąd 2 typ.
#'
#' ---Las losowy----
#' Ogólny wskaźnik błędu OOB (3,33%) sugeruje, że model działa bardzo dobrze, skutecznie klasyfikując większość przypadków.
#'
#' - Confusion matrix
#'
#' class.error (pomnóż x100) ile % zmiennych z kat model klasyfikuje błędnie.
#'
#' - MeanDecreaseAccuracy
#' Wartość na osi X oznacza średni spadek dokładności modelu po losowym przetasowaniu wartości danej cechy.
#' Wyższe wartości oznaczają, że dana cecha ma większe znaczenie dla dokładności modelu, ponieważ jej przetasowanie znacząco obniża jakość klasyfikacji.
#'
#' - MeanDecreaseGini
#' Wartość na osi X oznacza średni spadek indeksu Gini (Mean Decrease Gini), czyli miarę zmniejszenia nieczystości (impurity) w podziałach drzew decyzyjnych, wynikającą z użycia danej cechy.
#' Wyższe wartości oznaczają, że cecha ma większy wpływ na budowę modelu i klasyfikację.
#' Atrybuty z najwyższymi wartościami na osi X mają największy wpływ na jakość podziałów w modelu.
#'
#' Na przykład:
#' Attr39, Attr35 - te cechy znacząco przyczyniają się do zmniejszenia indeksu Gini i są najważniejsze dla modelu.
#'
#' - Boosting
#'
#' Na początku (pierwsze iteracje), błąd klasyfikacji wynosi około 6,67%.
#' Z każdą kolejną iteracją model coraz lepiej dostosowuje się do danych.
#' Iteracja 10: 3,33%, Iteracja 20: 0,79%, Iteracja 30: 0,00%.
#'
#' - Bagging
#' Szacowany wskaźnik błędu klasyfikacji (OOB) wynosi 0,0342.
#' Oznacza to, że około 3,42% przypadków zostało błędnie sklasyfikowanych na podstawie próbek niewykorzystanych podczas trenowania (out-of-bag).
#'
#' - Holt-winters
#' False (trend nie wygasa), True (trend wygasa).
#'
#' @param x A numeric value to be squared.
#' @return The square of the input value.
#' @examples
#' dummy_function(3)  # Returns 9
#' @export
qa <- function(x) {
  return(x^2)
}
