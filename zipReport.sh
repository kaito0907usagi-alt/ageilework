if [ -d "report" ]; then
	echo "reportというディレクトリを提出用にzipします．"

	##find . -name ".DS_Store" -depth -exec rm {} \;
	find . -name "\.*" -depth -exec rm {} \;

	filename=report`date +%Y%m%d%H%M%S`.zip

	zip -r $filename report
	echo -e "\n提出用zipファイル $filename が出力されました\n"
else
	echo -e "\nreportというディレクトリがありません．\n"
fi
