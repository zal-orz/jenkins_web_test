# 使用官方的 Python 基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /app

# 复制应用程序代码到镜像中
COPY app.py /app/

# 安装 Flask
RUN pip install Flask

# 暴露应用程序运行的端口
EXPOSE 5000

# 定义启动命令
CMD ["python", "app.py"]
