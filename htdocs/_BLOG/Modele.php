
                <?php
                 $threeLastRecipesQuery = "SELECT rec_resume, rec_miniature FROM t_recipe ORDER BY rec_id DESC LIMIT 3";

                 $threeLastQuery = $db->query($threeLastRecipesQuery);
                 $recipes = $threeLastQuery->fetchAll();
                 
                 foreach ($recipes as $recipe): ?>
                    <div class="col-12 col-md-6 col-xl-4 my-3">
                    <div class="card mx-auto" style="width: 18rem;">
                      <img src="img/<?=  $recipe['rec_miniature'];?>" class="card-img-top" alt="...">
                      <div class="card-body">
                        <p class="card-text"><?=  $recipe['rec_resume'];?></p>
                      </div>
                    </div>
                  </div>
                  <?php endforeach; ?>
                  </div>
      </div>
      <div class="container col-xxl-8 px-4 py-5">
          <h1 class="display-5 fw-bold text-center line"><span>Les derniers commentaires... </span></h1>
      
          <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                
                 


                <?php    
                $threeLastCommentsQuery = "SELECT com_auteur, com_contenu, rec_nom FROM t_comment LEFT JOIN t_recipe ON rec_id = id_rec ORDER BY com_id DESC LIMIT 3";
                $threeLastComQuery = $db->query($threeLastCommentsQuery);
                $count = $threeLastComQuery->rowCount();
                $comments = $threeLastComQuery->fetchAll();
                $flag = 1;
                foreach ($comments as $comment):
                if($flag === 1){
                  echo '<div class="carousel-item active">';
                } else{
                  echo '<div class="carousel-item">';
                }?>                
                  <div class="carousel-caption d-md-block">
                    <h5 class="text-dark"><?= $comment["com_contenu"];?></h5>
                    <p class="text-dark"><?= $comment["com_auteur"];?></p>
                    <p class="text-recipe-carousel fst-italic">Recette : <?= $comment["rec_nom"];?></p>
                  </div>
                </div>
               <?php 
                $flag += 1;
                endforeach; ?>
                </div>
           </div> <!-- fin de carousel -->
        </div>

                
              