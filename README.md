# Desarrollo de Algoritmos y Simulación Matemática

Este repositorio es una colección de proyectos académicos y desarrollos analíticos enfocados en la resolución de problemas de ingeniería, modelado físico y cálculo computacional. Está dividido en dos áreas principales según las herramientas y el alcance de los scripts.

## Métodos Numéricos y Física Aplicada (MatLab)

Esta sección contiene implementaciones de métodos numéricos fundamentales y el uso de MatLab como calculadora avanzada para la caracterización teórica de materiales.

*   **Algoritmos Base:** Scripts programados desde cero para la resolución de sistemas no lineales (Newton-Raphson multivariable), interpolación de datos (Lagrange y Newton), integración numérica (regla de los Trapecios y Simpson) y solución de Ecuaciones Diferenciales Ordinarias (Euler, Heun y Runge-Kutta).
*   **Física de Semiconductores:** Herramientas de cálculo computacional para modelar el comportamiento de dispositivos a escala nanométrica. Incluye estimaciones de variación del *Band Gap*, concentración intrínseca en función de la temperatura, densidad de estados y el modelado base de uniones PN.

## Simulación Matemática y Optimización (Python)

Esta sección recopila proyectos integrales desarrollados en Jupyter Notebooks/Google Colab, donde se modelan sistemas complejos y se analizan datos del mundo real utilizando Python.

*   **Optimización Matemática (Módulo 1):** Implementación de algoritmos de optimización para evaluar y minimizar funciones matemáticas complejas, estableciendo las bases para la toma de decisiones cuantitativas.
*   **Simulación Estocástica y Cadenas de Markov (Módulo 2):** Desarrollo de un modelo de simulación Montecarlo aplicado a la predicción climática. Utiliza probabilidades de transición para proyectar estados futuros basados en datos históricos.
*   **Dispersión 1D en un Reactor (Módulo 3):** Análisis físico-químico del transporte de masa. Simula matemáticamente el perfil de concentración y dispersión unidimensional dentro de un reactor a lo largo del tiempo para la optimización de parámetros clave.
*   **Estimación del Coeficiente de Seebeck:** Tratamiento de datos experimentales de corriente y voltaje (I-V) de un termopar. Debido a un comportamiento no óhmico, se implementa un modelo avanzado de optimización de *Doble Barrera Schottky (Back-to-Back)* usando la librería `lmfit` para extraer parámetros físicos reales.
*   **Mapeo Geoespacial de Densidad Comercial:** Procesamiento de bases de datos masivas del INEGI y generación de mapas de calor interactivos (usando `folium`) para el análisis y visualización de nichos de mercado por sector industrial.

---
**Tecnologías implementadas:** Python (NumPy, Matplotlib, pandas, lmfit, folium), MatLab.
