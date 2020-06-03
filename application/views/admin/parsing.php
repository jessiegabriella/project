
							<div class="row">
								<div class="col-md-8">
										<?php
									
											echo"<table class='table '><th>id</td><th>judul</th>";
											for($i=0;$i<=$row+1;$i++){
												echo"<tr><td>";
												echo $json['data'][$i]['id'];
												echo "</td><td>";
												echo $json['data'][$i]['judul'];
												echo"</td></tr>";
												echo $json['data'][$i]['img'];
												echo"</td></tr>";
												echo $json['data'][$i]['isi'];
												echo"</td></tr>";
											}
											?>
								</div>
							</div>