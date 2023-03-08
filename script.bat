@echo off
set PYTHON_HOME=C:\Python

echo Verificando se o Python ja esta instalado...
if exist %PYTHON_HOME%\python.exe (
  echo Python ja esta instalado em %PYTHON_HOME%
) else (
  echo Baixando o Python...
  powershell Invoke-WebRequest https://www.python.org/ftp/python/3.10.2/python-3.10.2-amd64.exe -OutFile python-3.10.2-amd64.exe

  echo Instalando o Python...
  start /wait python-3.10.2-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0 TargetDir=%PYTHON_HOME%
  if not exist %PYTHON_HOME%\python.exe (
    echo Falha na instalacao do Python!
    exit /b 1
  )
  setx PATH "%PATH%;%PYTHON_HOME%;%PYTHON_HOME%\Scripts"
)

echo Verificando se o pip ja esta instalado...
python -m pip --version > nul
if %errorlevel% equ 0 (
  echo pip ja esta instalado!
) else (
  echo Instalando o pip...
  python -m ensurepip --default-pip
  python -m ensurepip --upgrade
  python -m pip install --upgrade pip
  if %errorlevel% neq 0 (
    echo Falha na instalacao do pip!
    exit /b 1
  )
)

echo Verificando se o Selenium ja esta instalado...
python -c "import selenium" > nul
if %errorlevel% equ 0 (
  echo Selenium ja esta instalado!
) else (
  echo Instalando o Selenium...
  python -m pip install selenium
  if %errorlevel% neq 0 (
    echo Falha na instalacao do Selenium!
    exit /b 1
  )
)

echo Verificando se o PyAutoGUI ja esta instalado...
python -c "import pyautogui" > nul
if %errorlevel% equ 0 (
  echo PyAutoGUI ja esta instalado!
) else (
  echo Instalando o PyAutoGUI...
  python -m pip install  PyAutoGUI
  if %errorlevel% neq 0 (
    echo Falha na instalacao do PyAutoGUI!
    exit /b 1
  )
)

echo Verificando se o MouseInfo ja esta instalado...
python -c "import mouseinfo" > nul
if %errorlevel% equ 0 (
  echo MouseInfo ja esta instalado!
) else (
  echo Instalando o MouseInfo...
  python -m pip install MouseInfo
  if %errorlevel% neq 0 (
    echo Falha na instalacao do MouseInfo!
    exit /b 1
  )
)


echo Removendo o arquivo de instalacao do Python...
del python-3.10.2-amd64.exe


echo Todas as instalações foram concluídas com sucesso!
