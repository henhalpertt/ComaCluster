# ComaCluster
Data was retrieved from SDSS DR13:


SELECT <br>
   p.objid,p.ra,p.dec,p.modelMag_r,p.modelMagErr_r,<br>
   p.extinction_r,<br>
   s.class, s.z, s.zerr<br>
FROM PhotoObj AS p,<br>
   SpecObj AS s,<br>
   dbo.fGetNearbyObjEq(195.,28.,60) as N<br>
WHERE <br>
   n.objid = p.objid<br>
   AND s.bestobjid = p.objid<br>
   AND s.class = 'GALAXY'<br>
   AND (s.z <= 0.05) AND (s.z >= 0.005)<br>
   
   # Virial mass of Coma Cluster.
   
   review: 

Plotting the RA, Dec distribution of all the galaxies in catalogue

Finding weighted mean for RA and Dec values

Redshift histogram and fitting a gaussian function to it

Using the redshift to find the recessional velocity of the cluster

Finding the projected radial distances of galaxies from the center of Coma

Finding a subset of galaxies in coma, within a radial distance of 1.5Mpc from the center of the cluster and with redshifts within ±3σ

cumulative luminosity of the cluster as a function of the radial distance from the cluster center. Normalize this cumulative distribution function (CDF) by the total luminosity of the cluster.

Plotting a histogram of the peculiar velocities 

Finding an estimation for the M/L ratio of the coma cluster. 
