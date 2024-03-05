<script>
	import { onMount } from 'svelte';
	import { goto } from '$app/navigation';
	import overviewCardData from '@data/overviewCardOld.json';
	import { Container, Row, Col } from 'sveltestrap';
	import BreadcrumbOne from '@components/breadcrumbs/BreadcrumbOne.svelte';
	import EmployeeCard from '@components/cards/EmployeeCard.svelte';
	import { getItem } from '$lib/utility/localStorageController';

	let isAuthenticated = getItem('access_token');
	const overviewDataSorted = overviewCardData.slice(0, 4);
	let employees = [];

	onMount(() => {
		if (!isAuthenticated) {
			goto(`/signin`);
		} 
		(async () => {
		const response = await fetch('/api/employees');
		if (response.ok) {
			employees = await response.json();
		} else {
			console.error('Failed to fetch employees');
		}
		})();
	});
	
const breadcrumbData = {
	pageTitle: 'Employees',
	bcItem: 'Dashboard',
	bcItemActive: 'Employees'
};
let cardStyle = 'ap-po-details--two';
</script>

<svelte:head>
<title>Home One</title>
</svelte:head>

<div class="crm mb-25">
<Container fluid>
	<Row>
		<Col xxl={12}>
			<BreadcrumbOne {...breadcrumbData} />
		</Col>
	</Row>
	<Row>
		{#each employees as employee}
			<Col xxl={4} lg={6} class="mb-25">
			<EmployeeCard {employee} />
			</Col>
		{/each}
	</Row>
		  
</Container>
</div>
