-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2019 at 02:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_created_for`
--

DROP TABLE IF EXISTS `tbl_created_for`;
CREATE TABLE IF NOT EXISTS `tbl_created_for` (
  `created_for_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_for` varchar(200) NOT NULL,
  PRIMARY KEY (`created_for_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_created_for`
--

INSERT INTO `tbl_created_for` (`created_for_id`, `created_for`) VALUES
(1, 'Personal Project'),
(2, 'School Project');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_pieces`
--

DROP TABLE IF EXISTS `tbl_portfolio_pieces`;
CREATE TABLE IF NOT EXISTS `tbl_portfolio_pieces` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `video` varchar(750) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`portfolio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_portfolio_pieces`
--

INSERT INTO `tbl_portfolio_pieces` (`portfolio_id`, `project_name`, `video`, `description`) VALUES
(2, 'Nike Air Max Commercial', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/W_sN1TciBcU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>This was a school project in which we had to make a commercial using the morph technique that we learned in class. We were more or less given free reign on the subject matter of the commercial. I decided to make an advert for a for the Nike Air Max 1K, which is a fictional shoe based on the Nike Air Max 1. I came up with this idea after discovering the free model I used and realizing it was similar to, but not exactly the same as the Air Max 1. </p>\r\n<p>The first step was to import the sneaker model into Cinema 4D. Once I did, I noticed that the model was missing the Nike Air branding from the back of the shoe. To add it, I first needed to recreate the logo. I used Illustrator to trace the logo and imported the file into Cinema 4D so I would have the spline to add to the shoe. I also traced the swoosh for use in After Effects later. I copied the spline into the file with the shoe, resized the logo, added it to an extrude to give it depth, then used two bend deformers to fit the logo to the contours of the shoe. </p>\r\n<p>The next step was to add the materials. I wanted to make five different colourways for this shoe so I copied the model four times. I went on to create forty-one different materials which were applied to different shoes. For some materials like the canvas and suede, I added bump maps and displacement maps. For others like the translucent sole and the air bubbles, I changed properties such as the transparency, and reflection. </p>\r\n<p>When I was finished applying the materials to the shoes, it was time to animate them. I wanted each shoe to be rotating at the same constant speed and for this rotation to last the length of the animation. I achieved this by adding a keyframe to the beginning and end of each shoe’s timeline, starting at 0° and finishing at 1800°.</p>\r\n<p>For the morph, I first had to put my models into a fracture object set to explode segments. Then I added a plain effector to animate the different parts which I set to affect the scale and rotation of the shoe segments. I then  added a linear field to the plain to drive the animation. </p>\r\n<p>I also added a delay effector set to spring to add a little bit of bounce to the parts when they animate into place. </p>\r\n<p>To make the shoes look like they were morphing, I animated the linear fields to pass through one shoe and the next shoe at the same time. Each linear field had a two second transition and they overlapped for one second. The linear field on the current shoe would shrink the parts of the shoe down to zero while the other shoe’s linear field is increasing the segments of that shoe to full size. </p>\r\n<p>I then added an infinite white/grey background, a lighting set up, and a camera to finish up in Cinema 4D. I also rendered out a frame without any shoes to use as the background for my titles. </p>\r\n<p>I added my footage to a new composition and the first thing I did was add some colour grading. I made this quite subtle to maintain the colour accuracy of the different materials. I used the logos I created in Illustrator earlier in the title sequences along with the text tool. I then utilized a couple of the animation presets for the transitions, adjusting the properties of each to suit the commercial. </p>\r\n<p>The shoe animation seemed to be lacking something so I decided to add a bass zoom in tune to the music. The first step to this was to convert my audio to keyframes. In the new layer this created, I added a linear expression to the Both Channels slider to limit what frequencies it uses. Next I created a new adjustment layer with the Magnify and Radial Fast Blur effects. I added expressions to each effect to connect their animating properties to the value of the Both Channels slider. This creates the bass zoom effect that I used throughout the rest of the commercial as well. The video was then ready to export. </p>'),
(3, 'Dancing Creature', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/wW_Ra_Lz9wo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>The concept for this project was to take the dancing character animation lesson we did in class and create a new animation to composite into a real life scene. </p>\r\n<p>I wanted to have my video take place in an alley of sorts so the first thing I did was go to Value Village where I knew there was an alley-like setting and took a short video of me walking around the corner, using my phone to film. </p>\r\n<p>Next, I took a blank character model and imported it into Mixamo where I rigged it using their system. I then downloaded three animations: dancing, turning, and falling backwards. </p>\r\n<p>The next step was to take the footage I had gotten earlier and import it into After Effects. In After Effects, I used the camera tracker to track the scene. Once the tracking was complete, I selected the best point for my project and added a solid where I wanted my character to be. </p>\r\n<p>I then imported this tracked scene into Cinema 4D which automatically sets up a camera using the tracking data from After Effects so that the camera movement matches the video you are compositing it into. Next I brought in the animations I downloaded from Mixamo. To get the animations to blend together, I added them all to my scene and opened them up in the timeline where I put them all on one layer and overlapped them. Cinema 4D blended those animations together but the fall animation was in the wrong direction so I set up a pivot object to correct this. After that, I added some hair to the model to give it some more motion. Once the character was set up, I added the video in as the background for reference so I could properly position the animation to match the scene. When I was happy with how that looked, I added my lighting and a shadow catcher to where the ground would be. Next I hid the background layer and exported my animation as a sequence of PNGs with an alpha channel so it would export with a transparent background while keeping the shadows. This allowed me to edit the animation separately from the background video later. </p>\r\n<p>Once the image sequence finished exporting, I imported it along with the background video, a song, and a footstep sound effect into Premiere. I used Premiere for this project because I was going to be doing a little bit of sound design and I prefer Premiere’s sound editing over After Effects. I imported both layers of the video into the sequence and they lined up perfectly thanks to the work done earlier. To make it look better, I added some color correcting to each layer and an overall color grade using an adjustment layer with Lumetri Color. I then added the song to the scene and edited it to match how it would have sounded if it had really been playing when I took the video. I also added the footstep sound effect which I edited to match the creature’s fall so that when he fell, it wasn’t completely silent. Last but not least, I exported the final product. </p>'),
(4, 'Heads Up Display', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/R76WFLlbaEA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>The concept for this project was to create a HUD-like display, have it animate in, expand into 3D space, then animate back out. This project was created using After Effects. </p>\r\n<p>After creating my main composition, I created my HUD using various shape layers with strokes and repeaters. Once I was happy with my design, I began to animate it in. Layer by layer I added different animations using trim paths, scaling, and copies, varying them by rotating different layers and having animations start and end at different times. </p>\r\n<p>When I finished animating in all of the elements, I animated them out by copying the keyframes I had already made while animating the HUD in, pasting them, and time-reversing the keyframes so it animates out. I made sure to leave some space in my timeline for the 3D which would take place in between. Before I moved on to the 3D, I created a background using a solid with a Gradient Ramp effect and a solid set to screen with a Grid effect. I also added my layers into three different pre-compositions: one for the outer shapes, one for the middle shapes, and one for the inner shapes. </p>\r\n<p>For the 3D animation, I added a camera, set the background back in z-space from the HUD, and animated the pre-comps in the z-axis with rotation to explode them from each other in a visually interesting way. As I did earlier, I copied the keyframes and time-reversed them to animate it back to its normal state. Next I added my camera moves and adjusted the focus so that the 3D part of the animation had some background blur. The final touches were to add music that matched, a particle video set to screen on top to provide some atmosphere, an adjustment layer with the glow effect to make the HUD more interesting, and a fade out to the end. </p>'),
(5, 'Trapped Audio Visualization', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/fUmtFp-s6yM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>The concept for this project was to create an audio visualization for the song Trapped by Quincas Moreira. This is the song that I used in my demo reel. I wanted part of my reel to visualize the song I was using and that is where this idea spawned from. </p>\r\n<p>I already had the song downloaded to use in my demo reel so I imported it into a new composition in After Effects. First thing I did was create a solid with a Gradient Ramp to use as my background. Then I created another solid to use for my visualizer. I created a circle mask on this layer and added the Audio Spectrum effect to it. I set the Audio Spectrum to use my music as its source and slected the layer mask as the path. Next I set the display to digital and side B only to make the visualizer appear as bars on the outside of the circle mask. I adjusted the Audio Spectrum settings such as number of bands, frequency start and stop, and thickness to make it look how I wanted. I added a Gradient Ramp to this layer to give the bars some colour and the CC Light Burst effect to make the visualizer more interesting. </p>\r\n<p>I then made another smaller circle on a new shape layer to use as my timer. I gave it a stroke with no fill and added trim paths. I added keyframes to the trim paths to make the stroke animate from nothing to full in the length of the composition (the length of the song). Then inside that circle I added some text with the name of the song and the artist. </p>\r\n<p>For the stars I used the CC Star Burst and adjusted the speed, scatter, spacing, and size. I didn’t want the stars on the inside of the visualizer so I copied the background layer, pasted it above the stars layer, then copied the visualizer mask and pasted it on the new layer set to add to hide the unwanted stars. </p>\r\n<p>I also wanted to add some motion in tune with the bass of the song. The first step to this was to convert my audio to keyframes. In the new layer this created, I added a linear expression to the Both Channels slider to limit what frequencies it uses. Next I created a new adjustment layer with the Magnify effect set to enclose the entire composition and magnification set to 100. I added an expression to the magnification to make its value equal to 100 plus 0.15 times the value of the Both Channels slider. This makes the magnification line up with the bass of the song. </p>\r\n<p>The final touch was to add the Glow effect to each layer and adjust them accordingly. The video was then ready to export. </p>'),
(6, 'Sportsnet Commercial', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/9LHOWpIq44A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>This was a school project in which we needed to create a Sportsnet commercial or TV spot for a Chicago Bears vs. Dallas Stars game. We were provided with an example video, lens flare footage, particle footage, music, the pillars and the logo shields that come out of them, the textures used on the shields, the Sportsnet logo, the video used on the video board and the flag textures. </p>\r\n<p>The stadium and jumbotron or header were created using various tubes and cylinders of different sizes. The metal bars were created by putting shapes into atom arrays and making the cylinder and sphere radiuses the same size. The video board housings were created using the same processes with different shapes. The rotating Sportsnet logos were achieved by putting a material with the logo image used as the colour, adjusting the lengths and offsets to fit the shape properly, then animating the horizontal offset of the material. </p>\r\n<p>The first step in making the video boards was to modify a cube into a flatter shape with some fillets. Then I added this object to a grid array cloner, set it to clone four wide and three high, and adjusted the spacing. The video was added by making the colour texture of a material set to the MP4 then adding the material to the cloner set to flat projection on the front side. I only wanted the video on one side so I set the fix texture in the cloner to straight and added a black material to the cube in the cloner. I also added a tall, thin cylinder to a cloner to create the poles that the video boards would rotate on if they were real. To animate the rotating of the panels, I added a plain effector with a linear field to the cloner. I changed the plain effector’s parameters to rotate the panels 180° when the linear field passed through them. </p>\r\n<p>For each flag, I created a long rectangle and added a material that used the team’s provided banner. Then I added a cloth tag so that the rectangle would simulate cloth. At this point they would just fall to the ground because they werne’t fixed. To pin them, I positioned the top of the flag inside the bar that is holding them then selected the top points of the object and set them as the fix points in the dresser tab of the cloth tag. This made it look like they were being held by the bar and held them in place. I then adjusted the forces in the cloth tag to make them animate in the way I saw fit. </p>\r\n<p>The text was created by extruding a text object and using a spline wrap object to lock the text to a circle spline I created. To animate it I created keyframes for the from position in the spline wrap settings. </p>\r\n<p>My lighting set up consisted of five omni lights and one spot light positioned around the stadium to keep the scene well lit. I also placed coloured volumetric spot lights within the pillars to add some coloured light to the reveal of the logos. </p>\r\n<p>To finish the scene, I animated the opening of the pistons and the reveal of the logos, added a camera and set keyframes for my camera moves in tune to my chosen music. I also keyframed the focal length of the camera to blur the backgrounds. When my scene was complete, it was time to render and enhance in After Effects. </p>\r\n<p>In After Effects I created a new composition where I added my footage and music. Then I split my footage into different layers based on when my camera angles changed to a new scene. I used Lumetri Color on an adjustment layer to colour grade the footage. Next I precomposed any of the footage layers I wanted to add effects to I added a Spot Light effect set to light shadow for its render to add a bit of a vignette to the logo reveal scenes and the final scene. I animated this by keyframing the intensity. The lens flares in the logo reveal scenes were created using a provided lens flare, setting the mode to lighten, adjusting the colour with Lumetri Color, positioning it n the composition, and keyframing the opacity. The transitions were created using the Fast Box and Directional Blurs, CC Light Burst, and a Lens Flare effect on adjustment layers. Finally I added the particles footage, set it to screen, and lowered the opacity to give the video some atmosphere. </p>'),
(7, 'Biohazard Infinite Zoom', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/b5kK2lwsHgE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>The concept for this project was to create an artistic infinite zoom animation. I decided to use the biohazard symbol because I felt that it would loop well. Since I was using this symbol, I also decided that it should have a grungy vibes to go with the biohazard theme. </p>\r\n<p>To start, I needed to make the symbol so I opened up Illustrator and created a vector version. I also needed a grunge texture so I found a royalty free one to use on Google. </p>\r\n<p>Once I had my symbol, I created a composition in After Effects and imported my Illustrator file along with my grunge texture. I wanted the grunge to animate as well so I started with animating that portion. I had seen some videos that used choppy compositions as part of their overall animation and I wanted to recreate something similar as I felt it suited my project’s theme. To achieve this, I first precomposed the grunge texture. Then in this composition, I added keyframes to the position, moving the image and rotating it to get different angles. I made sure that the last keyframe was the same as the first so that it would loop. At this point the position was animating between each key frame so I converted them all to hold keyframes to create the choppiness I was looking for. Finally I added a loopOut expression to my keyframes to make them loop. I also added a Tint and Curves to the comp to make the composition darker since this would be used for my background. </p>\r\n<p>The next step was getting my symbol to loop. To begin this loop, I precomposed the symbol layer. I then copied the grunge comp and pasted it into my symbol comp below the symbol. I edited the Tint and Curves effects to make this composition light and set the track matte to alpha matte the symbol layer so that this layer was inside the biohazard symbol. I used the Roughen Edges effect on the symbol to make it a little more gritty. Then I added keyframes to the scale to make it scale up from its normal size to the point where it is no longer visible. I had to set these keyframes to scale exponentially to get the infinite zoom to work properly. After the initial symbol was set up, I copied the grunge and symbol layers then deleted the keyframes on the symbol layer. I went to the end of the timeline and parented and linked the copied symbol layer to the original. I then repeated this process by copying the copy I just made but this time I removed the parent and link and instead connected it to the first copy (the second symbol). My animation was now complete and ready for export. </p>'),
(8, 'Vulcan – The 9th Planet', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/I9expY5B4eo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>The concept for this video was to create a trailer of sorts for the reveal of the fictional ninth planet in our solar system, Vulcan. This project was created in After Effects using the Orb plugin from Video Copilot. </p>\r\n<p>To begin, I needed to find the textures for my planet. After a quick Google search, I discovered Solar System Scope which is a website that has high resolution planet textures for free. I downloaded the 4K Haumea, Venus Atmosphere, and Stars textures for my project. I also downloaded a song to use for the video. </p>\r\n<p>Once I had my textures and music, I opened After Effects and created a new composition. I dragged the textures into my composition and pre-comped each of them and created a camera so I could traverse the 3D space. Next I created a solid and added the Orb effect. I then set all of the map settings to use the Haumea texture as their source. To light the planet, I added a parallel light to the scene. Then I adjusted the different Orb settings such as the illumination, reflection, and bump intensity until I was happy with the result. I also added a Tint to the Haumea texture to make it more of a reddish brown colour. </p>\r\n<p>After that, I created a new solid with the Orb effect again. This time I only set the diffuse and bump map settings to use the Venus Atmosphere texture as their source. I added a Tint to that texture as well to change the colour and I also added an Extract effect to remove the blacks from the texture so that their was some transparency to it. I added a Curve effect to the Orb and again I adjusted the settings and until I was satisfied. This would become my cloud layer. I adjusted the edge feather and shrink properties to match the curvature of the planet. Next I copied this layer and increased the Orb radius. Then on the original layer I added a tint to make it black and applied a Fast Box Blur to create shadows for the clouds. </p>\r\n<p>I added a couple more Orb layers, set the blend mode to screen, and adjusted the illumination and fresnel settings to create the haze and halo. </p>\r\n<p>The final Orb only used the Stars texture for the diffuse layer. Then I changed the surface mapping to back so that the texture would show on the inside of the Orb. After increasing the radius of the Orb drastically, I had my space background. </p>\r\n<p>Now that my scene was set up, I added my music along with two more cameras, adding some camera moves and animated text set to the music. I also animated the planet to rotate slowly one way while the cloud orbs rotate slowly in the opposite direction. Afterwards I added an adjustment layer with the Radial Fast Blur effect and added some keyframes to create transitions. Finally I added a solid set to screen with a Gradient Ramp and an adjustment layer with Lumetri Color applied to colour grade the scene. </p>'),
(9, 'Liquid Loop', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube-nocookie.com/embed/kQ1gLqS13_U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<p>The concept for this project was to make a futuristic looking, looping background to use for the top of my website. The specs for this project were 30fps and 2560 x 1600 resolution to ensure that it is high quality and will fit my page properly at nearly any size. </p>\r\n<p>I started this project in Cinema 4D. I first created a plane object. I increased the number of segments to five hundred in both directions to get a more accurate result. I then created a material that used the Hama noise preset for the colour texture. I wanted the noise to animate and loop so I an animation speed then set the loop period equal to the length of my scene. Afterwards I adjusted the other shader properties and when I was happy with the result, I added the material to my plane. </p>\r\n<p>The next step was to add a displacer to my plane. After doing so, I changed the shading channel and set the target texture to the material I just created. This deformed the plane based on the noise material. </p>\r\n<p>After that I copied the noise material I created and added this material to the plane as well. In the material editor, I added the colorizer to the colour texture. Since the noise was the same as the displacer material, it coloured the plane based on the displacement. I set the gradient to a dark and light red with no blending to get a nice sharp difference between the two colours. These settings made it look like there were two different red liquid interacting with each other. I wanted to give the material a paint-like look so I increased the reflectivity and specular. </p>\r\n<p>The final step was to add ambient occlusion to create shadows in the cracks and crevasses in the plane. I added a camera with a top down view of the material and exported the footage. </p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_port_create_pro`
--

DROP TABLE IF EXISTS `tbl_port_create_pro`;
CREATE TABLE IF NOT EXISTS `tbl_port_create_pro` (
  `port_create_pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(6) NOT NULL,
  `created_for_id` int(6) NOT NULL,
  `programs_used_id` int(6) NOT NULL,
  PRIMARY KEY (`port_create_pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_port_create_pro`
--

INSERT INTO `tbl_port_create_pro` (`port_create_pro_id`, `portfolio_id`, `created_for_id`, `programs_used_id`) VALUES
(1, 2, 2, 1),
(2, 2, 2, 4),
(3, 2, 2, 5),
(4, 3, 1, 1),
(5, 3, 1, 2),
(6, 3, 1, 5),
(7, 3, 1, 6),
(8, 4, 1, 1),
(9, 5, 1, 1),
(10, 6, 2, 1),
(11, 6, 2, 5),
(12, 7, 1, 1),
(13, 7, 1, 4),
(14, 8, 1, 1),
(15, 9, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programs_used`
--

DROP TABLE IF EXISTS `tbl_programs_used`;
CREATE TABLE IF NOT EXISTS `tbl_programs_used` (
  `programs_used_id` int(11) NOT NULL AUTO_INCREMENT,
  `programs_used` varchar(300) NOT NULL,
  PRIMARY KEY (`programs_used_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_programs_used`
--

INSERT INTO `tbl_programs_used` (`programs_used_id`, `programs_used`) VALUES
(1, 'Adobe After Effects'),
(2, 'Adobe Premiere'),
(3, 'Adobe Photoshop'),
(4, 'Adobe Illustrator'),
(5, 'Cinema 4D'),
(6, 'Mixamo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;