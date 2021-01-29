pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}
pause