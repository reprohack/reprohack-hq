# TODO: Define steps using the tic DSL, see ?DSL
# get_stage("<stage name>") %>%
#   add_step(step_...(...))
get_stage("before_install") %>%
    add_code_step(update.packages(ask = FALSE))

get_stage("install") %>%
    add_code_step(remotes::install_deps(dependencies = TRUE))

if (ci_on_travis()) {
    get_stage("deploy") %>%
        add_code_step(rmarkdown::render("README.Rmd", run_pandoc = FALSE))
    
    if (ci_has_env("id_rsa")) {
        get_stage("before_deploy") %>%
            add_step(step_setup_ssh())
        
        get_stage("deploy") %>%
            add_step(step_push_deploy())
    }
}