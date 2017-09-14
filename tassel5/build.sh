docker run -it --rm --net=host \
    --user=$(id -u):$(id -g) \
    -w /home/tassel5/tassel-5-standalone \
    tassel5 \
    ./run_pipeline.pl -configFile example_pipelines/glm_tutorial_config.xml


java -classpath '$CP' $java_mem_min $java_mem_max net.maizegenetics.pipeline.TasselPipeline @args"
